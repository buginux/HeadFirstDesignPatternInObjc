//
//  DvdPlayer.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "DvdPlayer.h"
#import "Amplifier.h"

@interface DvdPlayer ()

@property (nonatomic, strong) Amplifier *amplifier;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *movie;
@property (nonatomic, assign) NSInteger currentTrack;

@end

@implementation DvdPlayer

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name {
    if (self = [super init]) {
        _amplifier = amplifier;
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

- (void)eject {
    NSLog(@"%@ eject", self.name);
    self.movie = nil;
}

- (void)playMovie:(NSString *)movie {
    self.movie = movie;
    self.currentTrack = 0;
    NSLog(@"%@ playing \"%@\"", self.name, movie);
}

- (void)playTrack:(NSInteger)track {
    if (self.movie) {
        self.currentTrack = track;
        NSLog(@"%@ playing track %ld of \"%@\"", self.name, track, self.movie);
    } else {
        NSLog(@"%@ can't play tarck %ld no dvd inserted", self.name, track);
    }
}

- (void)stop {
    self.currentTrack = 0;
    NSLog(@"%@ stopped \"%@\"", self.name, self.movie);
}

- (void)pause {
    NSLog(@"%@ paused \"%@\"", self.name, self.movie);
}

- (void)setTwoChannelAudio {
    NSLog(@"%@ set two channel audio", self.name);
}

- (void)setSurroundAudio {
    NSLog(@"%@ set surround audio", self.name);
}

- (NSString *)description {
    return self.name;
}

@end
