//
//  Player.m
//  Assignment 15
//
//  Created by Paulo Melila on 2017-09-04.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init {
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = NO;
        _gameLogic = @{ @"4" : @14, @"9": @31, @"20": @38, @"28": @84, @"40": @89, @"51": @67, @"63": @81, @"17": @7, @"64": @60, @"89": @26, @"95": @75, @"99": @78,};
        
    }
    return self;
}

-(void) roll {
    int dice = arc4random_uniform(6) + 1;
    
    _currentSquare  = _currentSquare + dice;
    _output = [NSString stringWithFormat:@"%@ rolled a %d, landed on square %ld",self.name, dice, _currentSquare];
    
    int current = (int) _currentSquare;
    
    for (NSNumber *number in [_gameLogic allKeys]){
        int key = [number intValue];
        if (key == current) {
            _currentSquare = [[_gameLogic objectForKey:number]integerValue];
            _output = [NSString stringWithFormat:@"Snake & Ladder! %@ rolled %d and is moving from square %d to square %ld", self.name, dice, key, _currentSquare];
        }
    }
    
    if (_currentSquare >= 100) {
        _gameOver = YES;
        _output = [NSString stringWithFormat:@"Player rolled a %d and reached square 100, game is over", dice];
    }
    
    NSLog(@"%@", _output);
    
}

- (NSString *) score {
    return [NSString stringWithFormat:@"\n%@: %ld", self.name, (long)self.currentSquare];
}

@end
