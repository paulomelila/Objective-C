//
//  Doctor.m
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (id)initWithName:(NSString *)name_ age:(NSInteger)age_
{
    self = [super init];
    if (self) {
        self.name = name_;
        self.age = age_;
        self.patientsList = [NSMutableArray array];
        
    }
    return self;
}

- (void) acceptPatient:(Patient*) patient {
    if(patient.hasHealthCard){
        [_patientsList addObject:patient];
    }
}
- (NSString*) requestMedication: (Patient*)patient{
    NSString *prescription;
    if([_patientsList containsObject:patient]){
        prescription = [[super prescriptions] valueForKey:patient.symptom];
        [[super prescribedList] setObject:prescription forKey:patient.patientId];
    }
    
    return prescription;
}

@end