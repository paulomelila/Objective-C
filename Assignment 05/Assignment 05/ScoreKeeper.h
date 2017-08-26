//
//  ScoreKeeper.h
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property NSInteger countRight;
@property NSInteger countWrong;
- (NSString*) getScoreString;

@end
