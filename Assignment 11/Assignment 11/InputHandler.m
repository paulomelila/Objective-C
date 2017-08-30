//
//  InputHandler.m
//  Assignment 11
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)initiateUserInteraction {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedString = [result stringByTrimmingCharactersInSet:charSet];
    
    return parsedString;
}

@end