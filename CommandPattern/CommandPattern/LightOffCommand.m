//
//  LightOffCommand.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@interface LightOffCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOffCommand

- (instancetype)initWithLight:(id)light {
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)execute {
    [self.light off];
}

@end
