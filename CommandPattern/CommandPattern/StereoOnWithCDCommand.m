//
//  StereoOnWithCDCommand.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "StereoOnWithCDCommand.h"
#import "Stereo.h"

@interface StereoOnWithCDCommand ()

@property (nonatomic, strong) Stereo *stereo;

@end

@implementation StereoOnWithCDCommand

- (instancetype)initWithStereo:(Stereo *)stereo {
    if (self = [super init]) {
        _stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo on];
    [self.stereo setCD];
    [self.stereo setVolume:11];
}

@end
