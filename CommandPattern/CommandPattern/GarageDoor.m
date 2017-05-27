//
//  GarageDoor.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "GarageDoor.h"

@interface GarageDoor ()

@property (nonatomic, strong) NSString *location;

@end

@implementation GarageDoor

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)up {
    NSLog(@"%@ garage door is UP", self.location);
}

- (void)down {
    NSLog(@"%@ garage door in DOWN", self.location);
}

- (void)stop {
    
}

- (void)lightOn {
    
}

- (void)lightOff {
    
}

@end
