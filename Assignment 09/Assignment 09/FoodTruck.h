//
//  FoodTruck.h
//  Assignment 09
//
//  Created by Paulo Melila on 2017-08-28.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodTruck;

@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end


@interface FoodTruck : NSObject

@property (nonatomic, weak) id<FoodTruckDelegate> delegate;
@property (nonatomic,readonly, strong) NSString *foodType;

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType;

-(void)serve:(int)orders;
-(void)cashOut;

@end