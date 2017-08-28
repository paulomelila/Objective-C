//
//  main.m
//  Assignment 07
//
//  Created by Paulo Melila on 2017-08-27.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Peter" age:41 symptom:@"headache" hasHealthCard:YES];
        Patient *p2 = [[Patient alloc] initWithName:@"Robert" age:34 symptom:@"stomachache" hasHealthCard:YES];
        Patient *p3 = [[Patient alloc] initWithName:@"Alana" age:23 symptom:@"stomachache" hasHealthCard:NO];
        
        Doctor *d1 = [[Doctor alloc] initWithName:@"Brian" age:39];
        
        [p1 visit:d1.name];
        [d1 acceptPatient:p1];
        [p2 visit:d1.name];
        [d1 acceptPatient:p2];
        [p3 visit:d1.name];
        [d1 acceptPatient:p3];
        
        [p1 setPrescription:[d1 requestMedication:p1]];
        [p2 setPrescription:[d1 requestMedication:p2]];
        [p3 setPrescription:[d1 requestMedication:p3]];
        
        NSLog(@"Dr. %@'s patient list", d1.name);
        for(int i = 0; i < d1.patientsList.count; i++){
            NSLog(@"%@", [[d1.patientsList objectAtIndex:i] name]);
            NSLog(@"%@", [[d1 prescribedList] valueForKey:[[d1.patientsList objectAtIndex:i] patientId]]);
            NSLog(@"\n");
        }
    }
    return 0;
}

