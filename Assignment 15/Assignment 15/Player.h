//
//  Player.h
//  Assignment 15
//
//  Created by Paulo Melila on 2017-09-04.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString * output;
@property (nonatomic) BOOL gameOver;
@property (nonatomic) NSString *name;


- (void) roll;
- (NSString *) score;

@end


