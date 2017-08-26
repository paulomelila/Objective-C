//
//  QuestionFactory.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"

@implementation QuestionFactory


- (instancetype)init {
    if(self = [super init]){
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicatioQuestion"];
    }
    return self;
}
- (Question*) generateRandomQuestion{
    NSInteger ran = arc4random_uniform(3);
    return [NSClassFromString([_questionSubclassNames objectAtIndex:ran]) new];
}
@end
