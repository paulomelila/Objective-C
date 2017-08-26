//
//  QuestionManager.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

NSTimeInterval total = 0;
NSTimeInterval average;

-(instancetype)init {
    self = [super init];
    if(self){
        self.questions = [NSMutableArray array];
    }
    return self;
}

-(NSString*) timeOutput {
    NSLog(@"count:%lu", (unsigned long)[self.questions count]);
    for(int i = 0; i < [self.questions count]; i++){
        Question *q = [self.questions objectAtIndex:i];
        total += [q answerTime];
    }
    
    average = total/[self.questions count];
    
    return [NSString stringWithFormat:@"total time: %ds, average time: %ds", (int)total, (int)average];
}

@end
