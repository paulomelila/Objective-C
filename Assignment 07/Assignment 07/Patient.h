//
//  Patient.h
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSString* symptom;
@property (nonatomic) BOOL hasHealthCard;

@property (nonatomic) NSString* patientId;
@property (nonatomic) NSString* prescription;
@property (nonatomic) NSString* doctorName;

- (id)initWithName:(NSString *)name_ age:(NSInteger)age_ symptom:(NSString *)symptom_ hasHealthCard:(BOOL)hasHealthCard_;
- (void) visit:(NSString*) name;

@end
