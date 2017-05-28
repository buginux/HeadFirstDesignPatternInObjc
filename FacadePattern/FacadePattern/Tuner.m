//
//  Tuner.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Tuner.h"
#import "Amplifier.h"

@interface Tuner ()

@property (nonatomic, strong) Amplifier *amplifier;
@property (nonatomic, strong) NSString *name;

@end

@implementation Tuner

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name {
    if (self = [super init]) {
        _amplifier = amplifier;
        _name = name;
    }
    return self;
}

- (NSString *)description {
    return self.name;
}

@end
