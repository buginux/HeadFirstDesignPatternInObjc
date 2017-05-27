//
//  GarageDoorUpCommand.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "GarageDoorUpCommand.h"
#import "GarageDoor.h"

@interface GarageDoorUpCommand ()

@property (nonatomic, strong) GarageDoor *garageDoor;

@end

@implementation GarageDoorUpCommand

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor {
    if (self = [super init]) {
        _garageDoor = garageDoor;
    }
    return self;
}

- (void)execute {
    [self.garageDoor up];
}

@end
