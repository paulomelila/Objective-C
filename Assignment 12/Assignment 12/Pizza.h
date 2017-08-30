//
//  Pizza.h
//  Assignment 12
//
//  Created by Paulo Melila on 2017-08-30.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge
};

@interface Pizza : NSObject

@property (nonatomic, readonly) NSArray *toppings;
@property (nonatomic, readonly) PizzaSize size;

- (instancetype)initPizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@end