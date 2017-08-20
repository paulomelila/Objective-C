//
//  Box.m
//  ASN2
//
//  Created by Derrick Park on 2017-08-18.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float) height Width:(float) width Length: (float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) getVolume {
    return self.height * self.width * self.length;
}

- (float) ratioToAnotherBox: (Box *) box {
    return self.getVolume / box.getVolume;
}

@end
