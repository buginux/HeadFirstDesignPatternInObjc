//
//  Light.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Light.h"

@interface Light ()

@property (nonatomic, strong) NSString *location;

@end

@implementation Light

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ light is on", self.location);
}

- (void)off {
    NSLog(@"%@ light is off", self.location);
}

@end
