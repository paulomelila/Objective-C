//
//  main.m
//  Assignment 13
//
//  Created by Paulo Melila on 2017-08-24.
//  Copyright © 2017 Paulo Melila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"%@", [@"hello" stringByPigLatinization]);
        NSLog(@"%@", [@"world" stringByPigLatinization]);
        NSLog(@"%@", [@"flower" stringByPigLatinization]);
        NSLog(@"%@", [@"grateful" stringByPigLatinization]);
        NSLog(@"%@", [@"love" stringByPigLatinization]);
    }
    return 0;
}
