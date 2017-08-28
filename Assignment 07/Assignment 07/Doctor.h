//
//  Doctor.h
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hospital.h"
@class Patient;

@interface Doctor : Hospital
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSMutableArray* patientsList;

- (id)initWithName:(NSString *)name_ age:(NSInteger)age_;
- (NSString*) requestMedication: (Patient*)patient;
- (void) acceptPatient:(Patient*) patient;

@end