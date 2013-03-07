//
//  View.m
//  MyGWTW
//
//  Created by Mike Smith on 3/5/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blueColor];
        
        NSString *text = @"David O. Selznick\nPresents";
        
//        CGRect b = self.bounds;
        CGFloat w = self.bounds.size.width;
        CGFloat h = self.bounds.size.height;
        self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
        
        UIFont *font = [UIFont italicSystemFontOfSize: 16];
        CGSize size = [text sizeWithFont:font];
        CGRect f = CGRectMake(
                              0,
                              0,
                              size.width,
                              size.height*3);
        label = [[UITextView alloc] initWithFrame: f];
        
        label.center = CGPointMake(0, 0);
        
        //CGPointMake(
        //b.size.width/2 - (b.size.width/32) ,
        //b.size.height
        //);

        
        label.font = font;
        label.alpha = 1;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview:label];
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code

    [UIView animateWithDuration: 5
                          delay:0//23.75
                        options: UIViewAnimationOptionCurveLinear
                     animations: ^{
                         
                        label.alpha=0;
                         // move the label far enough to the left
                         // so that it's out of the view
//                         label.center = CGPointMake(
//                                                    -label.bounds.size.width / 2,
//                                                    self.bounds.size.height / 2
//                                                    );
                         
                     
            }
                     completion: NULL
     ];
}


@end
