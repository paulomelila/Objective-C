//
//  DeliveryService.h
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pizza;

@protocol PizzaDeliveryProtocol <NSObject>

- (void)deliverPizza:(Pizza *)pizza;

@end

@interface DeliveryService : NSObject <PizzaDeliveryProtocol>

@property (nonatomic, weak) id <PizzaDeliveryProtocol> delegate;

- (void)deliverPizza:(Pizza *)pizza;

@end