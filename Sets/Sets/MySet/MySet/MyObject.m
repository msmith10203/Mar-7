//
//  MyObject.m
//  MySet
//
//  Created by Mike Smith on 3/2/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject


-(NSMutableSet*) addToSet:(NSMutableSet*)set element: (NSString*)ele {
    if ((set)&& (ele)){
        [set addObject: ele];
    }
    return set;
}

-(NSUInteger) getCountFromSet:(NSMutableSet*)set {
    return [set count];
}

-(void) showLeanings {
    NSSet *parties = [NSSet setWithObjects:
                      @"Democratic",
                      @"Republican",
                      nil
                      ];
    
    NSSet *leanings = [NSSet setWithObjects:
                       @"liberal",
                       @"moderate",
                       @"conservative",
                       nil
                       ];
    
    for (NSString *party in parties) {
        for (NSString *leaning in leanings) {
            NSLog(@"%@ %@", party, leaning);
        }
    }
    
    for (NSString *leaning in leanings) {
        for (NSString *party in parties) {
            NSLog(@"%@ %@", leaning, party);
        }
    }
}

@end
