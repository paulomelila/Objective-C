//
//  Amazon.m
//  Assignment 10
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Amazon.h"

@implementation Amazon

- (void)processPaymentAmount:(NSInteger)integer {
    if ([self canProcessPayment] == true) {
        NSLog(@"Amazon processed amount $%ld", (long)integer);
    } else {
    NSLog(@"System is under maintenance.");
    }
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2);
}

@end