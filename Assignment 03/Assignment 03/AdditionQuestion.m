//
//  AdditionQuestion.m
//  Assignment 03
//
//  Created by Paulo Melila on 2017-08-21.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

//override init
- (instancetype)init {
    if (self = [super init]) {
        NSInteger num1 = arc4random_uniform(100) + 1; // generate random number from 1 to 100
        NSInteger num2 = arc4random_uniform(100) + 1; // generate random number from 1 to 100
        _question = [NSString stringWithFormat: @"%ld + %ld = ?", num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end