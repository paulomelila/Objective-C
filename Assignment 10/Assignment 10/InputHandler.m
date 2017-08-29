//
//  InputHandler.m
//  Assignment 10
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSInteger) getPaymentMethod {
    char input [0];
    fgets (input, 100, stdin);
    
    NSString *inputAsString = [[NSString alloc]initWithUTF8String:input];
    inputAsString = [inputAsString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSInteger inputAsInteger = [inputAsString integerValue];
    
    return inputAsInteger;
}
@end
