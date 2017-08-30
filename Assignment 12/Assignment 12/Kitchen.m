//
//  Kitchen.m
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Kitchen.h"
#import "Manager.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if (self.delegate) {
        BOOL shouldMake = [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
        BOOL shouldUpgrade = [self.delegate kitchenShouldUpgradeOrder:self];
        if ((shouldMake) && (shouldUpgrade)) {
            
            Pizza *pizza = [[Pizza alloc]initPizzaWithSize:PizzaSizeLarge andToppings:toppings];
            NSLog(@"Your pizza is ready. Enjoy!");
            
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                
                [self.delegate kitchenDidMakePizza:pizza];
                
            }
            
            return pizza;
            
        } else if ((shouldMake) && (!shouldUpgrade)) {
            
            Pizza *pizza = [[Pizza alloc]initPizzaWithSize:size andToppings:toppings];
            NSLog(@"Your pizza is ready. Enjoy!");
            
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                
                [self.delegate kitchenDidMakePizza:pizza];
                
            }
            
            return pizza;
            
        } else {
            
            NSLog(@"Ugh, anchovies?! Not on my watch, get out of here!");
            return nil;
            
        }
        
        
    } else {
        
        NSLog(@"Sorry, we are closed");
        return nil;
    }
    
}
-(id<KitchenDelegate>)delegate {
    
    if (!_delegate) {
        _delegate = [[Manager alloc]init];
    }
    return _delegate;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    return [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
    
}
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return [self.delegate kitchenShouldUpgradeOrder:self];
}


- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
    NSLog(@"We made a %ld pizza with %@ toppings",(long)pizza.size, pizza.toppings);
    
}

@end
