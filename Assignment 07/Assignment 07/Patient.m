//
//  Patient.m
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Patient.h"
@class Doctor;

@implementation Patient
- (id)initWithName:(NSString *)name_ age:(NSInteger)age_ symptom:(NSString *)symptom_ hasHealthCard:(BOOL)hasHealthCard_
{
    self = [super init];
    if (self) {
        self.patientId = [[NSUUID UUID] UUIDString];
        self.name = name_;
        self.age = age_;
        self.symptom = symptom_;
        self.hasHealthCard = hasHealthCard_;
    }
    return self;
}

- (void) visit:(NSString*) name{
    if(self.hasHealthCard){
        _doctorName = name;
    } else{
        NSLog(@"%@ cannot be accepted because the patient doesn't have a health card", self.name);
    }
}

@end
