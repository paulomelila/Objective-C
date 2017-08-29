//
//  PaymentGateway.m
//  Assignment 10
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPayment : (NSInteger) price {
    [self.paymentDelegate processPaymentAmount:price];
}

// get a random value between 100 and 1000
+ (NSInteger) getRandomPrice {
    int value = arc4random_uniform(901) + 100;
    return value;
}

@end