//
//  Manager.m
//  Assignment 11
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

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

@end
