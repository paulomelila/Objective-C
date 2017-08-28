//
//  SpecialDiscount.m
//  Assignment 09
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "HolidayDiscount.h"

@implementation HolidayDiscount

// Foodtrucks charge half the original price on holidays
- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    
    double price;
    
    if ([food isEqualToString:@"bao"]) {
        price = 2.50;
    }
    else {
        price = 1.50;
    }
    return price;
}

-(BOOL)isHoliday {
    // create a simple random int picker to decide if it's holiday or not.
    int num = arc4random_uniform(100) + 1;
    
    if (num % 5 == 0) {
        return YES;
    } else {
        return NO;
    }
}

@end
