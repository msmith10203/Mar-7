//
//  main.m
//  MyArray
//
//  Created by Mike Smith on 3/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ArrayAppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSArray *boroughs = [NSArray arrayWithObjects:
                             @"Bronx",
                             @"Brooklyn",
                             @"Manhattan",
                             @"Queens",
                             @"Staten Island",
                             nil];
        
        NSUInteger c = [boroughs count];
        NSLog(@"boroughs.count==%u", c);
        
        for(NSString *borough in boroughs) {
            NSLog(@"%@", borough);
        }
        
        if (c > 0) {
            NSLog(@"The first borough is %@.", [boroughs objectAtIndex:0]);
            NSLog(@"The last borough is %@.", [boroughs lastObject]);
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ArrayAppDelegate class]));
    }
}
