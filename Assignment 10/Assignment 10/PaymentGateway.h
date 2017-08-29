//
//  PaymentGateway.h
//  Assignment 10
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentGateway <NSObject>

- (void)processPaymentAmount:(NSInteger)integer;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic,weak) id<PaymentGateway> paymentDelegate;

- (void)processPayment : (NSInteger) price;

+ (NSInteger) getRandomPrice;

@end