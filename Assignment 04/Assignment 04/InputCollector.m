//
//  InputCollector.m
//  Assignment 04
//
//  Created by Paulo Melila on 2017-08-22.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

@implementation InputCollector
int const MAX_HISTORY = 3;

- (id) init {
    self = [super init];
    if (self) {
        self.historyList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char inputChars[256];
    fgets(inputChars, 256, stdin);
    NSString *input = [NSString stringWithCString:
                       inputChars encoding:NSUTF8StringEncoding];
    input = [input substringToIndex:[input length] -1];
    [self addHistoryList:input];
    return input;
}

-(void) addHistoryList:(NSString *)input {
    [self.historyList addObject:input];
    if(self.historyList.count > MAX_HISTORY){
        [self.historyList removeObjectAtIndex:0];
    }
}

-(void) showHistory {
    for(int i = 0; i < [self.historyList count]; i++){
        NSLog(@"history: %@", [self.historyList objectAtIndex:i]);
    }
}

@end