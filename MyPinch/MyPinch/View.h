//
//  View.h
//  MyPinch
//
//  Created by Mike Smith on 3/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView {
    CGFloat oldScale;
    UILabel *label;
    CGFloat width;
    CGFloat height;
}

@end
