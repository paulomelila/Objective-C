//
//  DeliveryService.m
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (void)deliverPizza:(Pizza *)pizza {
    [self.delegate deliverPizza:pizza];
}

@end
