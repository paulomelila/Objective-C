//
//  Kitchen.m
//  Assignment 08
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen


- (void)proccessOrder: (NSArray*) order{
    
    PizzaSize size = 0;
    
    NSMutableArray* topping = [NSMutableArray array];
    
    
    for (NSString* yum in order) {
        BOOL hasSize = [self hasPizzasize:yum];
        if (hasSize) {
            size = GetPizzaSize(yum);
        }
        
        BOOL hasTopping = [self hasToppings:yum];
        if (hasTopping) {
            [topping addObject:yum];
        }
        
    }
    
    
    if ((size != 0) && (topping.count > 0)) {
        
        NSLog(@"Your pizza is being prepared...");
        [self makePizzaWithSize:size toppings:topping];
        
    } else{
        NSLog(@"Sorry, we don't have that option.");
        exit(0);
    }
    
}

- (BOOL)hasPizzasize:(NSString*)yum{
    
    BOOL hassize = false;
    for (NSString* size in PizzaSizeTextList){
        if ([size isEqualToString: yum]) {
            hassize = true;
            break;
        }
    }
    return hassize;
}


- (BOOL)hasToppings:(NSString*)yum{
    BOOL hasTopping = false;
    for (NSString* size in PizzaToppingList){
        if ([size isEqualToString: yum]) {
            hasTopping = true;
        }
    }
    return hasTopping;
}


- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza* pizza = [[Pizza alloc]initWithSize:size initWithtopping:toppings];
    return pizza;
}

@end
