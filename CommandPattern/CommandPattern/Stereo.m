//
//  Stereo.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Stereo.h"

@interface Stereo ()

@property (nonatomic, strong) NSString *location;

@end

@implementation Stereo

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ stereo is on", self.location);
}

- (void)off {
    NSLog(@"%@ stereo is off", self.location);
}

- (void)setCD {
    
}

- (void)setVolume:(NSInteger)volume {
    
}

@end
