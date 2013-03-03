//
//  main.m
//  MySet
//
//  Created by Mike Smith on 3/2/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SetAppDelegate.h"
#import "MyObject.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {

        NSMutableSet *boroughs = [[NSMutableSet alloc] init];
        MyObject* myObj = [[MyObject alloc]init];
        NSString *s1 = @"Bronx";
        boroughs = [myObj addToSet: boroughs element:s1];
        
        s1=@"Brooklyn";
        boroughs = [myObj addToSet: boroughs element:s1];
        boroughs = [myObj addToSet: boroughs element:@"Manhattan"];
        boroughs = [myObj addToSet: boroughs element:@"Queens"];
        boroughs = [myObj addToSet: boroughs element:@"Staten Island"];
        
        NSLog(@"%@", [boroughs description]);
        NSLog(@"count: %u", [myObj getCountFromSet:boroughs]);

        [myObj showLeanings];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([SetAppDelegate class]));
    }
}
