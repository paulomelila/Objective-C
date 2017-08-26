//
//  ScoreKeeper.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString*) getScoreString {
    NSInteger percentage = (100 * _countRight) / (_countWrong + _countRight);
    return [NSString stringWithFormat:@"score: %ld right, %ld wrong ---- %ld %%", _countRight, _countWrong, percentage];
}

@end
