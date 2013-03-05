//
//  View.m
//  MyLabel
//
//  Created by Mike Smith on 3/4/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        NSString *string = @"Hello, World!";
        UIFont *font = [UIFont systemFontOfSize:32];
        CGSize size = [string sizeWithFont: font];
        
        CGRect f = CGRectMake(
        self.bounds.origin.x,
                              self.bounds.origin.y,
                              size.width,
                              size.height);
        label = [[UILabel alloc] initWithFrame: f];
        label.backgroundColor = [UIColor yellowColor];
        label.font = font;
        label.text = string;
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
