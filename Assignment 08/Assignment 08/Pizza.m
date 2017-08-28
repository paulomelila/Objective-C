//
//  Pizza.m
//  Assignment 08
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size initWithtopping: (NSArray*)toppings
{
    self = [super init];
    if (self) {
        NSString *pizasize = GetPizzaSizeText(size);
        NSLog(@"Your pizza is ready!");
        NSLog(@"Size: %@, toppings: %@", pizasize, toppings);
    }
    return self;
}

@end
