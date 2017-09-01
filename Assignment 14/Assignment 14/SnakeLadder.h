//
//  SnakeLadder.h
//  Assignment 14
//
//  Created by Paulo Melila on 2017-08-31.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface SnakeLadder : NSObject

@property NSDictionary* dictionary;
@property NSInteger score;

- (NSInteger)move:(NSNumber*)number;
- (BOOL)checkforTrap:(NSNumber*)current;

@end