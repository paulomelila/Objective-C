//
//  main.m
//  Assignment 10
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PayPal.h"
#import "Amazon.h"
#import "Stripe.h"
#import "Apple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger price = [PaymentGateway getRandomPrice];
        
        NSLog(@"\nThank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method: \n\n1: PayPal \n2: Stripe \n3: Amazon \n4: Apple", price);
        
        PaymentGateway *gateway = [[PaymentGateway alloc]init];
        
        PayPal *paypal = [[PayPal alloc]init];
        Amazon *amazon  = [[Amazon alloc]init];
        Stripe *stripe  = [[Stripe alloc]init];
        Apple *apple  = [[Apple alloc]init];
        
        NSInteger input = [InputHandler getPaymentMethod];
        
        switch (input) {
            case 1:
                gateway.paymentDelegate = paypal;
                break;
            case 2:
                gateway.paymentDelegate = stripe;
                break;
            case 3:
                gateway.paymentDelegate = amazon;
                break;
            case 4:
                gateway.paymentDelegate = apple;
            default:
                break;
        }
        [gateway processPayment: price];
    }
    
    return 0;
}

