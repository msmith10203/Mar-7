//
//  View.m
//  MyPinch
//
//  Created by Mike Smith on 3/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "View.h"

@implementation View

- (void) pinch: (UIPinchGestureRecognizer *) recognizer{
    label.bounds = CGRectMake((self.bounds.size.width - width * recognizer.scale) / 2, (self.bounds.size.height - height * recognizer.scale) / 2, width*recognizer.scale, height*recognizer.scale);
    label.font = [UIFont systemFontOfSize:20*recognizer.scale];
    NSString *verdict;
    
    if (recognizer.scale > oldScale){
        verdict = @"spread";
    } else if (recognizer.scale < oldScale) {
        verdict = @"pinch";
    } else {
        verdict = @"neither";
    }
    oldScale = recognizer.scale;
    label.text = [NSString stringWithFormat:@"%@ %g",
                  verdict,
                  recognizer.scale
                  ];
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        width = self.bounds.size.width / 2;
        height = width / 2;
        
        CGRect f = CGRectMake((self.bounds.size.width - width) / 2, (self.bounds.size.height - height) / 2, width, height);
        label=[[UILabel alloc] initWithFrame: f];
        label.textAlignment = UITextAlignmentCenter;
        label.backgroundColor = [UIColor yellowColor];
        
        UIPinchGestureRecognizer *recognizer = [[UIPinchGestureRecognizer alloc]
                                                initWithTarget:self action:@selector(pinch:)];
        oldScale = recognizer.scale;
        [self pinch:recognizer];
        [self addGestureRecognizer:recognizer];
        [self addSubview:label];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
