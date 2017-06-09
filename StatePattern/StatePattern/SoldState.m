//
//  SoldState.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "SoldState.h"
#import "GumballMachine.h"

@interface SoldState ()

@property (nonatomic, weak) GumballMachine *gumballMachine;

@end

@implementation SoldState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine {
    if (self = [super init]) {
        _gumballMachine = gumballMachine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"Please wait, we're already giving you a gumball");
}

- (void)ejectQuarter {
    NSLog(@"Sorry, you already turned the crank");
}

- (void)turnCrank {
    NSLog(@"Turning twice doesn't get you another gumball!");
}

- (void)dispense {
    [self.gumballMachine releaseBall];
    if (self.gumballMachine.count > 0) {
        self.gumballMachine.state = self.gumballMachine.noQuarterState;
    } else {
        NSLog(@"Oops, out of gumballs!");
        self.gumballMachine.state = self.gumballMachine.soldOutState;
    }
}

@end
