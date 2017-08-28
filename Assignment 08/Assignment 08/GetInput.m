//
//  GetInput.m
//  Assignment 08
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "GetInput.h"

@implementation GetInput

+ (NSString*)getUserInput{
    char str[100];
    fgets (str, 100, stdin);
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
