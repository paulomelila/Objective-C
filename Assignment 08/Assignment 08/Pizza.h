//
//  Pizza.h
//  Assignment 08
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"


@interface Pizza : NSObject

- (instancetype)initWithSize: (PizzaSize) size initWithtopping: (NSArray*)toppings;

@end