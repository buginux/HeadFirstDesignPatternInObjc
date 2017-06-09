//
//  WinnerState.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "WinnerState.h"
#import "GumballMachine.h"

@interface WinnerState ()

@property (nonatomic, weak) GumballMachine *gumballMachine;

@end

@implementation WinnerState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine {
    if (self = [super init]) {
        _gumballMachine = gumballMachine;
    }
    return self;
}

@end
