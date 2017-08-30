//
//  Manager.h
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface Manager : NSObject <KitchenDelegate>

@property (nonatomic,weak) id <PizzaDeliveryProtocol> delegate;

- (void)deliverPizza:(Pizza *)pizza;


@end