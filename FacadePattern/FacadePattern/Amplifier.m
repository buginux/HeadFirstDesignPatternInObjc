//
//  Amplifier.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Amplifier.h"

@interface Amplifier ()

@property (nonatomic, strong) NSString *name;

@end

@implementation Amplifier

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

- (void)setStereoSound {
    NSLog(@"%@ stereo mode on", self.name);
}

- (void)setSurroundSound {
    NSLog(@"%@ surround sound on (5 speakers, 1 subwoofer)", self.name);
}

- (void)setVolume:(NSInteger)level {
    NSLog(@"%@ setting volume to %ld", self.name, level);
}

- (void)setTuner:(Tuner *)tuner {
    NSLog(@"%@ setting tuner to %@", self.name, tuner);
    _tuner = tuner;
}

- (void)setDvdPlayer:(DvdPlayer *)dvdPlayer {
    NSLog(@"%@ setting DVD player to %@", self.name, dvdPlayer);
}

- (void)setCdPlayer:(CdPlayer *)cdPlayer {
    NSLog(@"%@ setting CD player to %@", self.name, cdPlayer);
}

- (NSString *)description {
    return self.name;
}

@end
