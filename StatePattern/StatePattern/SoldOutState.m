//
//  SoldOutState.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "SoldOutState.h"
#import "GumballMachine.h"

@interface SoldOutState ()

@property (nonatomic, weak) GumballMachine *gumballMachine;

@end

@implementation SoldOutState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine {
    if (self = [super init]) {
        _gumballMachine = gumballMachine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"You can't insert a quarter, the machine is sold out");
}

- (void)ejectQuarter {
    NSLog(@"You can't eject, you haven't inserted a quarter yet");
}

- (void)turnCrank {
    NSLog(@"You turned, but there are no gumballs");
}

- (void)dispense {
    NSLog(@"No gumball dispensed");
}

- (void)refill {
    self.gumballMachine.state = self.gumballMachine.noQuarterState;
}

@end
