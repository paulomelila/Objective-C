//
//  AdditionQuestion.h
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property  (nonatomic) NSInteger rightValue;
@property  (nonatomic) NSInteger leftValue;
@property  (nonatomic) NSString* question;
@property  (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end
