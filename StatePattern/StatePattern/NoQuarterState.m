//
//  NoQuarterState.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "NoQuarterState.h"
#import "GumballMachine.h"

@interface NoQuarterState ()

@property (nonatomic, weak) GumballMachine *gumballMachine;

@end

@implementation NoQuarterState

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine {
    if (self = [super init]) {
        _gumballMachine = gumballMachine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"You inserted a quarter");
    self.gumballMachine.state = self.gumballMachine.hasQuarterState;
}

- (void)ejectQuarter {
    NSLog(@"You haven't inserted a quarter");
}

- (void)turnCrank {
    NSLog(@"You turned, but there's no quarter");
}

- (void)dispense {
    NSLog(@"You need to pay first");
}

@end
