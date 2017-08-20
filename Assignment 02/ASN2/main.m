//
//  main.m
//  ASN2
//
//  Created by Derrick Park on 2017-08-18.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *box1 = [[Box alloc] initWithHeight:10 Width:10 Length:10];
        
        Box *box2 = [[Box alloc] initWithHeight:100 Width:10 Length:10];
        
        NSLog(@"Box1 is %f times of Box2", [box1 ratioToAnotherBox:box2]);
    }
    return 0;
}
