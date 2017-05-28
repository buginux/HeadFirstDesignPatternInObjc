//
//  Projector.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Projector.h"
#import "DvdPlayer.h"

@interface Projector ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) DvdPlayer *dvdPlayer;

@end

@implementation Projector

- (instancetype)initWithDvdPlayer:(DvdPlayer *)dvdPlayer name:(NSString *)name {
    if (self = [super init]) {
        _dvdPlayer = dvdPlayer;
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

- (void)wideScreenMode {
    NSLog(@"%@ in widescreen mode (16x9 aspect ratio)", self.name);
}

- (void)tvMode {
    NSLog(@"%@ in tv mode (4x3 aspect ratio)", self.name);
}

- (NSString *)description {
    return self.name;
}


@end
