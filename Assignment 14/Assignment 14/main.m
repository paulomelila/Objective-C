//
//  main.m
//  Assignment 14
//
//  Created by Paulo Melila on 2017-08-31.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

/*
                            SNAKES & LADDERS
 
 To create a single player command line game called Snakes & Ladders
 that models the kid's game
 
 ● The app will wait for the user to type roll (or r for short) and will roll a
 random dice value between 1 and 6
 ● Once the user rolls the app will move the user to a new square
 ● The user will jump forward or go back depending whether they land on a
 ladder or snake
 ● The app will inform the user which square they have landed on and
 whether they hit a snake or ladder along the way
 ● When the user passes square 100 the game is over and the game and
 congratulates them.
 
 1. Create a NSDictionary and populate it with NSNumber variables.
 2. Compare NSNumber variables
 3. Use dictionary for modeling moving squares when landing on ladders or snakes
 4. Override the default initializer init
*/

#import <Foundation/Foundation.h>
#import "SnakeLadder.h"
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SnakeLadder *snakeLadder = [[SnakeLadder alloc]init];
        Player *p1 = [[Player alloc]init];
        
        NSLog(@"Welcome to Snake & Ladders game.");
        
        while (true) {
            
            // waits for user to type roll or r to roll the dice
            NSLog(@"Type 'roll' or 'r' to roll the dice: \n>");
            NSString *roll = [InputHandler inputHandler];
            
            // check if there's a ladder or snake in the new square
            if ([roll isEqualToString:@"roll"] || [roll isEqualToString:@"r"]) {
                [p1 roll:snakeLadder];
                
            // quit the game and show the final user's square
            } else if ([roll isEqualToString:@"quit"]) {
                NSLog(@"You quit the game. You finished at square no. %ld", [p1 currentSquare]);
                break;
            
            // handle different inputs
            } else {
                NSLog(@"Command not found. Please try again.");
            }
            
            // check if the user surpassed square 100 and finish game
            if (p1.gameOver == true) {
                NSLog(@"You surpassed square 100. Game is over!");
                break;
            }
        }
    }
    return 0;
}

