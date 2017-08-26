//
//  QuestionFactory.h
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject
@property NSArray *questionSubclassNames;
- (Question*) generateRandomQuestion;
@end
