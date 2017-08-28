//
//  Cook.m
//  Assignment 09
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Cook.h"

@implementation Cook

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    
    double price;
    
    if ([food isEqualToString:@"bao"]) {
        price = 5;
    }
    else{
        price = 3;
    }
    return price;
    
}

@end
