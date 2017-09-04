//
//  PlayerManager.h
//  Assignment 15
//
//  Created by Paulo Melila on 2017-09-04.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;

-(void)createPlayers:(int)numberOfPlayers;
-(void) roll;
- (Player *)currentPlayer;
- (NSString *) score;

@end