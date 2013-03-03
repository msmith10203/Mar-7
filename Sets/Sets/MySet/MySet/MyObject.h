//
//  MyObject.h
//  MySet
//
//  Created by Mike Smith on 3/2/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject {
    NSMutableSet* mySet;
}



-(NSMutableSet*) addToSet:(NSMutableSet*)set element: (NSString*)ele;
-(NSUInteger) getCountFromSet:(NSMutableSet*)set;
-(void) showLeanings;

@end
