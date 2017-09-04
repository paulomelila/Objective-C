//
//  PlayerManager.m
//  Assignment 15
//
//  Created by Paulo Melila on 2017-09-04.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager


- (instancetype)init {
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc]init];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(int)numberOfPlayers {
    for (int i=0; i<numberOfPlayers;i++) {
        Player *player = [[Player alloc]init];
        player.name =[NSMutableString stringWithFormat:@"player %d",i+1];
        [_players addObject:player];
        
    }
}


- (Player *)currentPlayer {
    
    int count = (int) [_players count];
    int i = (int)_currentIndex;
    
    Player *player;
    
    while (i % count != 0 || i==0){
        Player *player = _players[i];
        return player;
    }
    
    if(i % count == 0)
        _currentIndex= 0;
    
    return player;
}

-(void) roll {
    Player *currentplayer = [self currentPlayer];
    [currentplayer roll];
    _currentIndex += 1;
    
}

- (NSString *)score {
    
    NSMutableString  *scores = [[NSMutableString alloc]init];
    for (Player *player in _players) {
        NSString *score = [player score];
        [scores appendString:score];
    }
    
    return [NSString stringWithString:scores];
}

@end
