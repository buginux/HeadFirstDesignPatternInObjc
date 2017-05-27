//
//  StereoOffWithCDCommand.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "StereoOffWithCDCommand.h"
#import "Stereo.h"

@interface StereoOffWithCDCommand ()

@property (nonatomic, strong) Stereo *stereo;

@end

@implementation StereoOffWithCDCommand

- (instancetype)initWithStereo:(Stereo *)stereo {
    if (self = [super init]) {
        _stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo off];
}

@end
