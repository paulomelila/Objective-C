//
//  Player.m
//  Assignment 14
//
//  Created by Paulo Melila on 2017-08-31.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Player.h"
#import "SnakeLadder.h"

@implementation Player

- (instancetype)init {
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = false;
    }
    return self;
}

- (void)roll:(SnakeLadder*)snakeLadder{
    
    NSInteger diceValue = arc4random_uniform(6) + 1;
    NSLog(@"Dice value is: %ld",(long) diceValue);
    _currentSquare = _currentSquare + diceValue;
    
    NSLog(@"Your current square is: %ld",(long)_currentSquare);
    
    NSNumber *myNum = [NSNumber numberWithInteger:_currentSquare];
    
    if ([snakeLadder checkforTrap:myNum] == true) {
        _currentSquare = [snakeLadder move:myNum];
        NSLog(@"There was a snake or a ladder at this square! You moved from square %@ to square %ld", myNum,(long)_currentSquare);
    };
    
    if (_currentSquare > 100) {
        _gameOver = true;
    }
}

@end
