//
//  main.m
//  Assignment 15
//
//  Created by Paulo Melila on 2017-09-04.
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
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Welcome to Snake & Ladders Game (Multiplayer Edition)");
        
        PlayerManager *playerManager = [[PlayerManager alloc]init];
        
        while (YES) {
            if ([playerManager.players count] <= 0) {
                
                NSLog(@"Please enter a valid number of players");
                NSString *num_of_players = [InputHandler inputHandler];
                
                if ([num_of_players intValue] == nil) {
                    NSLog(@"Invalid input. Try again.");
                    continue;
                } else
                    [playerManager createPlayers:[num_of_players intValue]];
            }
            
            NSLog(@"Type roll or r to roll the dice");
            NSString *input = [[InputHandler inputHandler]lowercaseString];
            if ([input isEqualToString:@"r"] || [input isEqualToString:@"roll"]) {
                [playerManager currentPlayer];
                [playerManager roll];
                
                if(playerManager.currentPlayer.gameOver) {
                    NSLog(@"Game over!");
                    [playerManager.players removeAllObjects];
                    continue;
                }
                NSLog(@"SCORE");
                NSLog(@"%@",[playerManager score]);
            }
            else if ([input isEqualToString:@"q"] || [input isEqualToString:@"quit"]) {
                NSLog(@"Press q or quit again to quit or r/restart to restart the game");
                NSString *quit_restart = [[InputHandler inputHandler]lowercaseString];
                
                if ([quit_restart isEqualToString:@"q"] || [quit_restart isEqualToString:@"quit"]){
                    NSLog(@"You quit the game. Thanks for playing.");
                    break;
                } else if ([quit_restart isEqualToString:@"r"] || [quit_restart isEqualToString:@"restart"]) {
                    [playerManager.players removeAllObjects];
                    continue;
                }
            }
        }
    }
    return 0;
}
