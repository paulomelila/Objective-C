//
//  Player.h
//  Assignment 14
//
//  Created by Paulo Melila on 2017-08-31.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SnakeLadder;

@interface Player : NSObject

@property NSInteger currentSquare;
@property BOOL gameOver;

- (void)roll:(SnakeLadder*)snakeLadder;

@end
