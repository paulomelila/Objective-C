//
//  main.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "QuestionFactory.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *sk = [ScoreKeeper new];
        QuestionManager *qm = [QuestionManager new];
        QuestionFactory *qf = [QuestionFactory new];
        
        printf("MATHS!\n\n");

        while(gameOn){
            Question *myQuestion = [qf generateRandomQuestion];
            NSLog(@"%@", [myQuestion question]);
            
            NSString* input = [InputHandler getString];
            
            //check quit or not
            if ([input isEqualToString:@"quit"]){
                gameOn = NO;
                continue;
            }
            
            //check the answer
            if([myQuestion answer] == [input intValue]){
                [sk setCountRight:[sk countRight] + 1];
                NSLog(@"Right!");
            } else{
                sk.countWrong++;
                NSLog(@"Wrong! %ld", myQuestion.answer);
            }
            NSLog(@"%@", sk.getScoreString);
            [[qm questions] addObject:myQuestion];
            
            NSLog(@"%@", [qm timeOutput]);
        }
    }
    return 0;
}
