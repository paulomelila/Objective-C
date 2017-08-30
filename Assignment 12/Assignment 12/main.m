//
//  main.m
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "InputHandler.h"
#import "CheeryManager.h"
#import "Manager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

Manager *_mediumManager;
CheeryManager *cheeryManager;

Manager * manager() {
    if (!_mediumManager) {
        _mediumManager = [Manager new];
    }
    return _mediumManager;
}

PizzaSize convertSizeStringToPizzaSize(NSString *sizeString) {
    
    PizzaSize result = PizzaSizeLarge;
    
    if ([sizeString isEqualToString:@"small"]) {
        result = PizzaSizeSmall;
    } else if ([sizeString isEqualToString:@"medium"]) {
        result = PizzaSizeMedium;
    }
    
    return result;
}

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        Kitchen *kitchen = [[Kitchen alloc]init];
        DeliveryService *deliveryService = [[DeliveryService alloc]init];
        DeliveryCar *deliveryCar = [[DeliveryCar alloc]init];
        deliveryService.delegate = deliveryCar;
        
        while (TRUE) {
            
            NSLog(@"\nWelcome to our Pizza Restaurant!\nPlease press '1' to order from our Angry Manager or press '2' to order from our Happy Manager:");
            NSString *managerSelected = [InputHandler initiateUserInteraction];
            
            id<KitchenDelegate>currentManager = [managerSelected isEqualToString:@"1"] ? manager() :  [[CheeryManager alloc]init];
            [currentManager setDelegate:deliveryService];
            kitchen.delegate = currentManager;
        
            NSLog(@"Please, choose the size and toppings of your pizza in the following format:\nsize topping1 topping2 topping3 etc:\n");
            
            NSString *inputString = [InputHandler initiateUserInteraction];
            NSArray *pizzaOrder = [inputString componentsSeparatedByString:@" "];
            NSString *size = pizzaOrder.firstObject;
            NSArray *toppings = [pizzaOrder subarrayWithRange:NSMakeRange(1, ([pizzaOrder count]-1))];

            PizzaSize pizzaSize = convertSizeStringToPizzaSize(size);
            
            [kitchen makePizzaWithSize:pizzaSize toppings:toppings];
        }
        
    }
    return 0;
}