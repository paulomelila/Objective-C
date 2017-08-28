//
//  GameController.h
//  Assignment 06
//
//  Created by Paulo Melila on 2017-08-26.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray *diceArr;
@property (nonatomic, strong) NSMutableArray *heldDiceArr;
@property (nonatomic) const NSInteger MAX_ROLL_TIMES;
@property NSInteger rollCount;
-(void) holdDie:(NSInteger)i;
-(void) resetDice;
-(void) printStatus;
-(void) printScore;
-(void) printAvailableDiceIndex;
-(void) printAvailableDiceIndex:(NSString*) string;

@end
