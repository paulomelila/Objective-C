//
//  CheeryManager.m
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    NSLog(@"Thank you, dear customer!");
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end
