//
//  MultiplicationQuestion.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}


- (void) generateQuestion {
    super.question = [NSString stringWithFormat: @"%ld x %ld =", super.leftValue, super.rightValue];
    super.answer = super.leftValue * super.rightValue;
}
@end

