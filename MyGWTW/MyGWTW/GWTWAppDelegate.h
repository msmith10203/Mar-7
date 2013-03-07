//
//  GWTWAppDelegate.h
//  MyGWTW
//
//  Created by Mike Smith on 3/5/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
@class View;

@interface GWTWAppDelegate : UIResponder <UIApplicationDelegate>{
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;
@end
