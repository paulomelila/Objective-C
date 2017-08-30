//
//  Pizza.m
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initPizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    if (self = [super init]) {
        _size = size;
        _toppings = toppings;
    }
    
    return self;
}

@end
