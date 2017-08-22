//
//  main.m
//  Assignment 03
//
//  Created by Paulo Melila on 2017-08-21.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        
        printf("MATHS!");
        
        while(gameOn){
            AdditionQuestion *aq = [[AdditionQuestion alloc] init];
            NSLog(@"%@", aq.question);
            
            NSString* input = [InputHandler getString];
            
            if ([input isEqualToString:@"quit"]){
                gameOn = NO;
                continue;
            }
            
            if(aq.answer == [input intValue]){
                sk.countRight++;
                NSLog(@"Right!");
            } else{
                sk.countWrong++;
                NSLog(@"Wrong!");
            }
            NSLog(@"%@", sk.getScoreString);
        }
    }
    return 0;
}
