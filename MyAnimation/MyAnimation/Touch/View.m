//
//  View.m
//  Touch
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "View.h"
#import "LittleView.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
//        bb = YES;
        
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];

        
        
//        ---------------------  ------ b.size.width
//        --------------
        
        CGRect b = self.bounds;
        
        //         CGRect f = CGRectMake(
        //         b.origin.x + (b.size.width - w) / 2,
        //         b.origin.y + (b.size.height - h) / 2,
        //         w,
        //         h);
        self.bounds = CGRectMake(
                                 -b.size.width / 2,
                                 -b.size.height / 2,
                                 b.size.width,
                                 b.size.height);
        
        
//        CGRect f = CGRectMake(0, 0, 80, 40);
        CGFloat w = 80;  // width in pixels of little view
        CGFloat h = 40;  // height in pixels of little view
        CGRect f = CGRectMake(-w / 2,
                              -h / 2,
                              w,
                              h);
        littleView = [[LittleView alloc] initWithFrame: f];
        [self addSubview: littleView];
    }
    return self;
}


- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	if (touches.count > 0) {
		[UIView animateWithDuration: 1.0//0.2//1.0
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations: ^{
                             //This block describes what the animation should do.
//                             [UIView setAnimationRepeatCount: 1];
//                             littleView.center = [[touches anyObject] locationInView: self];
//                             littleView.alpha = 0.0;	//0.0 is transparent, 1.0 is opaque
                             CGColorSpaceRef colorspace=CGColorSpaceCreateDeviceRGB();
                             const CGFloat components[] = {0.0,
                                 1.0, 0.0, 1.0};
                             littleView.layer.backgroundColor =
                             CGColorCreate(colorspace, components);
                             
                             CGPoint p = [[touches anyObject] locationInView: self];
                             CGFloat h = self.bounds.size.height;
                             
                             littleView.backgroundColor = [UIColor
                                                           colorWithRed: 0.0
                                                           green: p.y / h		//green near the bottom
                                                           blue: (h - p.y) / h	//blue near the top
                                                           alpha: 1.0
                                                           ];
//                             littleView.transform = CGAffineTransformMakeScale(1, 2);
                             
//                             littleView.transform = CGAffineTransformMakeRotation(-90 * M_PI / 180);
                             
                             littleView.transform = CGAffineTransformConcat(
                                                                            CGAffineTransformMakeRotation(90 * M_PI / 180),
                                                                            CGAffineTransformMakeScale(1, 2)
                                                                            );
                             /*
                              bb = !bb;
                              if (bb){
                              const CGFloat components[] = {0.0, 1.0, 0.0, 1.0};
                              littleView.layer.backgroundColor =
                              CGColorCreate(colorspace, components);
                              }else {
                              const CGFloat components[] = {0.0, 0.0, 1.0, 1.0};
                              littleView.layer.backgroundColor =
                              CGColorCreate(colorspace, components);
                              }
                              */
                         }
                         completion: NULL
         ];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
}
*/

@end
