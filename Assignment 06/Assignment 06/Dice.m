//
//  Dice.m
//  Assignment 06
//
//  Created by Paulo Melila on 2017-08-26.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Dice.h"

@implementation Dice

NSMutableArray* diceSymbols;

- (instancetype)init{
    if(self = [super init]){
        _isHeld = NO;
        diceSymbols = [[NSMutableArray alloc] initWithArray:@[@"⚀", @"⚁", @"⚂",@"⚃",@"⚄",@"⚅"]];
        [self throwDice];
    }
    return self;
}

- (void) throwDice{
    _currentValue = arc4random_uniform(6)+1;
    _currentValueSymbol = [diceSymbols objectAtIndex:_currentValue-1];
}

@end