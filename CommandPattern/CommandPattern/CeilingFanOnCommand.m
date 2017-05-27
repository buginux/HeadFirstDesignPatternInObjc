//
//  CeilingFanOnCommand.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CeilingFanOnCommand.h"
#import "CeilingFan.h"

@interface CeilingFanOnCommand ()

@property (nonatomic, strong) CeilingFan *ceilingFan;

@end

@implementation CeilingFanOnCommand

- (instancetype)initWithCeilingFan:(CeilingFan *)ceilingFan {
    if (self = [super init]) {
        _ceilingFan = ceilingFan;
    }
    return self;
}

- (void)execute {
    [self.ceilingFan high];
}

@end
