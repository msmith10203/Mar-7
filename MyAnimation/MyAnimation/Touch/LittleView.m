//
//  LittleView.m
//  Touch
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "LittleView.h"

@implementation LittleView

- (id) initWithFrame: (CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor clearColor];
        
        CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
        const CGFloat components[] = {1.0, 1.0, 0.0, 1.0};
        CALayer *layer = self.layer;
        layer.backgroundColor = CGColorCreate(colorspace, components);
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 20];
    [@"Hello!" drawAtPoint: CGPointZero withFont: font];
}


@end
