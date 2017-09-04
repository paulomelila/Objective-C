//
//  InputHandler.m
//  Assignment 15
//
//  Created by Paulo Melila on 2017-09-04.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) inputHandler {
    char roll[255];
    fgets(roll, 255, stdin);
    NSString *rollCommand = [NSString stringWithCString:roll encoding:NSASCIIStringEncoding];
    return [rollCommand stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end