//
//  HasQuarterState.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "HasQuarterState.h"
#import "GumballMachine.h"

@interface HasQuarterState ()

@property (nonatomic, weak) GumballMachine *gumballMachine;

@end

@implementation HasQuarterState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine {
    if (self = [super init]) {
        _gumballMachine = gumballMachine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"You can't insert another quarter");
}

- (void)ejectQuarter {
    NSLog(@"Quarter returned");
    self.gumballMachine.state = self.gumballMachine.noQuarterState;
}

- (void)turnCrank {
    NSLog(@"You turned...");
    self.gumballMachine.state = self.gumballMachine.soldState;
}

- (void)dispense {
    NSLog(@"No gumball dispensed");
}

@end
