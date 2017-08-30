//
//  Manager.m
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Manager.h"
#import "Kitchen.h"

@implementation Manager

//required
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    for (NSString* topping in toppings) {
        if ([topping containsString:@"anchovies"]){
            return NO;
        }
    }
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)deliverPizza:(Pizza *)pizza {
    
    [self.delegate deliverPizza:pizza];
    
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    [self deliverPizza:pizza];
}

@end