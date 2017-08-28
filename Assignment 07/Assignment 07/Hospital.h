//
//  Hospital.h
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hospital : NSObject
@property (nonatomic, strong) NSMutableDictionary* prescribedList;
@property (nonatomic, strong) NSMutableDictionary* prescriptions;

@end