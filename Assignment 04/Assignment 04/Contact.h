//
//  Contact.h
//  Assignment 04
//
//  Created by Paulo Melila on 2017-08-22.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;

- (instancetype)initWithName:(NSString *)name andEmail:(NSString *)email;

@end