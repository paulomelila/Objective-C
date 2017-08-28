//
//  GameController.m
//  Assignment 06
//
//  Created by Paulo Melila on 2017-08-26.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceArr = [NSMutableArray array];
        _heldDiceArr = [NSMutableArray array];
        self.MAX_ROLL_TIMES = 5;
    }
    return self;
}

- (void) holdDie:(NSInteger)i {
    if([[_diceArr objectAtIndex:i-1] isHeld]){
        [_heldDiceArr removeObject:[_diceArr objectAtIndex:i-1]];
        _rollCount--;
    } else{
        [_heldDiceArr addObject:[_diceArr objectAtIndex:i-1]];
        [[_diceArr objectAtIndex:i-1] setIsHeld:YES];
        _rollCount++;
    }
}

-(void) resetDice {
    _rollCount = 0;
    [_heldDiceArr removeAllObjects];
    for(int i = 0; i < _diceArr.count; i++){
        [[_diceArr objectAtIndex:i] setIsHeld:NO];
    }
}

-(void) printStatus {
    //print rolled
    printf("%s", [@"[Rolled] " UTF8String]);
    for(int i = 0; i < _diceArr.count; i++){
        printf("%d:",i+1);
        printf("%s ", [[[_diceArr objectAtIndex:i] currentValueSymbol] UTF8String]);
    }
    printf("\n");
    
    //print held
    printf("%s", [@"[Held] " UTF8String]);
    for(int i = 0; i < _heldDiceArr.count; i++){
        printf("%s ", [[[_heldDiceArr objectAtIndex:i] currentValueSymbol] UTF8String]);
    }
    printf("\n");
}
-(void) printScore{
    printf("%s", [@"[Score] " UTF8String]);
    printf("%ld", [self getScore]);
    printf("\n");
}

-(NSInteger) getScore {
    NSInteger score = 0;
    for(int i = 0; i < _heldDiceArr.count; i++){
        if([[_heldDiceArr objectAtIndex:i] currentValue] != 3){
            score += [[_heldDiceArr objectAtIndex:i] currentValue];
        }
    }
    return score;
}

-(void) printAvailableDiceIndex {
    if (_diceArr.count == 1) {
        NSLog(@"Input dice index 1 to hold the dice");
    } else{
        NSLog(@"Input dice index range of 1 to %ld to hold the dice", _diceArr.count);
    }
}

-(void) printAvailableDiceIndex:(NSString*) string {
    if (_diceArr.count == 1) {
        NSLog(@"Input dice index 1 to hold the dice %@", string);
    } else{
        NSLog(@"Input dice index range of 1 to %ld to hold the dice %@", _diceArr.count, string);
    }
}


@end