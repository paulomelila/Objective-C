//
//  main.m
//  Assignment 09
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "HolidayDiscount.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        Cook *cook1 = [[Cook alloc]init];
        HolidayDiscount *hd = [[HolidayDiscount alloc]init];
        BOOL holiday = hd.isHoliday;
        
        if (holiday == YES) {
            // Discount on holidays
            NSLog(@"Enjoy the holiday's special prices!");
            NSLog(@"\n");
            truckA.delegate = hd;
            truckB.delegate = hd;
            [truckA serve:80];
            [truckB serve:100];
            [truckA cashOut];
            [truckB cashOut];
        }
        
        else {
            // Full price on normal days
            truckA.delegate = cook1;
            truckB.delegate = cook1;
            [truckA serve:40];
            [truckB serve:50];
            [truckA cashOut];
            [truckB cashOut];
        }
    }
    
    return 0;
}
