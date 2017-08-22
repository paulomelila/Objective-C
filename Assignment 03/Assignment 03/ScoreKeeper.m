//
//  ScoreKeeper.m
//  Assignment 03
//
//  Created by Paulo Melila on 2017-08-21.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString*) getScoreString {
    //    NSInteger percentage = _countRight / (_countWrong + _countRight) *100;
    NSInteger percentage = (100 * _countRight) / (_countWrong + _countRight);
    return [NSString stringWithFormat:@"Score: %ld%% (%ld right, %ld wrong)", percentage, _countRight, _countWrong];
}

@end