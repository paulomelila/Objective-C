//
//  AdditionQuestion.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Question.h"

@implementation Question

//override inonatomic, nit
- (instancetype)init {
    if (self = [super init]) {
        _leftValue = arc4random_uniform(100) + 10;
        _rightValue = arc4random_uniform(100) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void) generateQuestion {
    
}

@end
