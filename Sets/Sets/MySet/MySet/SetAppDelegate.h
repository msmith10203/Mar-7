//
//  SetAppDelegate.h
//  MySet
//
//  Created by Mike Smith on 3/2/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;
@interface SetAppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
