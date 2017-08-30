//
//  DeliveryCar.h
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryService.h"

@class Pizza;

@interface DeliveryCar : NSObject <PizzaDeliveryProtocol>

- (void)deliverPizza:(Pizza *)pizza;

@end
