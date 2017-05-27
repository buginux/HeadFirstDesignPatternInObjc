//
//  CeilingFanOffCommand.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CeilingFanOffCommand.h"
#import "CeilingFan.h"

@interface CeilingFanOffCommand ()

@property (nonatomic, strong) CeilingFan *ceilingFan;

@end

@implementation CeilingFanOffCommand

- (instancetype)initWithCeilingFan:(CeilingFan *)ceilingFan {
    if (self = [super init]) {
        _ceilingFan = ceilingFan;
    }
    return self;
}

- (void)execute {
    [self.ceilingFan off];
}

@end
