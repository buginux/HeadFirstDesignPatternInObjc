//
//  CeilingFan.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CeilingFan.h"

@interface CeilingFan ()

@property (nonatomic, strong) NSString *location;

@end

@implementation CeilingFan

- (instancetype)initWithLocation:(NSString *)location {
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

- (void)high {
    NSLog(@"%@ ceiling fan is on high", self.location);
}

- (void)medium {
    
}

- (void)low {
    
}

- (void)off {
    NSLog(@"%@ ceiling fan is off", self.location);
}

@end
