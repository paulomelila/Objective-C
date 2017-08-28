//
//  main.m
//  Assignment 08
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "GetInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please select your pizza size and options for toppings");
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            NSLog(@"> ");
            
            NSString* inputString = [GetInput getUserInput];
            NSLog(@"You selected a %@ pizza", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            [restaurantKitchen proccessOrder:commandWords];
            
            NSLog(@"Anything else? [yes/no]");
            NSString* again = [GetInput getUserInput];
            
            if ([again isEqualToString:@"no"]) {
                NSLog(@"Thank you, have a nice day!");
                break;
            }
        }
    }
    return 0;
}
