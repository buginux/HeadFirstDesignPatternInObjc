//
//  TheaterLights.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "TheaterLights.h"

@interface TheaterLights ()

@property (nonatomic, strong) NSString *name;

@end

@implementation TheaterLights

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)on {
    NSLog(@"%@ on", self.name);
}

- (void)off {
    NSLog(@"%@ off", self.name);
}

- (void)dimToLevel:(NSInteger)level {
    NSLog(@"%@ dimming to %ld%%", self.name, level);
}

- (NSString *)description {
    return self.name;
}

    
    
    
@end
