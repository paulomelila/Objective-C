//
//  InputCollector.h
//  Assignment 04
//
//  Created by Paulo Melila on 2017-08-22.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (strong, nonatomic) NSMutableArray *historyList;

- (NSString *)inputForPrompt:(NSString *)promptString;
-(void) addHistoryList:(NSString *)input;
-(void) showHistory;

@end