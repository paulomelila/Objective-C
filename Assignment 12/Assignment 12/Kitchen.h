//
//  Kitchen.h
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;
#import "DeliveryService.h"

@protocol KitchenDelegate <NSObject>

@required

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void)setDelegate:(id<PizzaDeliveryProtocol>)delegate;

@optional

- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end


@interface Kitchen : NSObject

@property (nonatomic, strong) id <KitchenDelegate> delegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;


@end
