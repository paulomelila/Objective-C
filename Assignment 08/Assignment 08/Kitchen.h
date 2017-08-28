//
//  Kitchen.h
//  Assignment 08
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize){
    small = 1,
    medium,
    large
};

typedef NS_ENUM(NSInteger,Topping){
    ham = 1,
    cheese,
    pinapple
};

#define GetPizzaSizeText(type) PizzaSizeTextList[type]
#define GetPizzaSize(typeText) (PizzaSize)[PizzaSizeTextList indexOfObject:typeText]
#define PizzaSizeTextList @[@"small",@"medium",@"large"]
#define PizzaToppingList @[@"ham",@"cheese",@"pineapple"]

@class Pizza;

@interface Kitchen : NSObject

- (void)proccessOrder: (NSArray*) order;
- (BOOL)hasPizzasize:(NSString*)yum;
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end