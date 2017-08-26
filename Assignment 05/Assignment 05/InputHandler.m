//
//  InputHandler.m
//  Assignment 05
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString*) getString{
    char inputChars[256];
    fgets(inputChars, 256, stdin);
    NSString *input = [[NSString stringWithCString:
                        inputChars encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:
                       [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
