//
//  Hospital.m
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Hospital.h"

@implementation Hospital

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.prescribedList = [NSMutableDictionary dictionary];
        self.prescriptions = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                              @"headache medicine", @"headache",
                              @"stomachache medicine", @"stomachache",
                              nil];
    }
    return self;
}

@end