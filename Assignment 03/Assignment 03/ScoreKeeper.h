//
//  ScoreKeeper.h
//  Assignment 03
//
//  Created by Paulo Melila on 2017-08-21.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property NSInteger countRight;
@property NSInteger countWrong;
- (NSString*) getScoreString;

@end