//
//  GumballMachine.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "GumballMachine.h"
#import "SoldOutState.h"
#import "SoldState.h"
#import "NoQuarterState.h"
#import "HasQuarterState.h"
#import "WinnerState.h"

@interface GumballMachine ()

@property (nonatomic, strong) id<State> soldOutState;
@property (nonatomic, strong) id<State> noQuarterState;
@property (nonatomic, strong) id<State> hasQuarterState;
@property (nonatomic, strong) id<State> soldState;

@end

@implementation GumballMachine

- (instancetype)initWithNumberOfGumballs:(NSInteger)numOfGumballs {
    if (self = [super init]) {
        _soldOutState = [[SoldOutState alloc] initWithGumballMachine:self];
        _noQuarterState = [[NoQuarterState alloc] initWithGumballMachine:self];
        _hasQuarterState = [[HasQuarterState alloc] initWithGumballMachine:self];
        _soldState = [[SoldState alloc] initWithGumballMachine:self];
        
        _count = numOfGumballs;
        if (numOfGumballs > 0) {
            _state = _noQuarterState;
        }
    }
    return self;
}

- (void)insertQuarter {
    [self.state insertQuarter];
}

- (void)ejectQuarter {
    [self.state ejectQuarter];
}

- (void)turnGrank {
    [self.state turnCrank];
    [self.state dispense];
}

- (void)releaseBall {
    NSLog(@"A gumball comes rolling out the solt...");
    if (self.count != 0) {
        self.count--;
    }
}

- (NSString *)description {
    NSMutableString *result = [NSMutableString string];
    [result appendString:@"\nMighty Gumball, Inc."];
    [result appendString:@"\nJava-enabled Standing Gumball Model #2004"];
    [result appendFormat:@"\nInventory: %ld gumball", (long)self.count];
    if (self.count != 1) {
        [result appendString:@"s"];
    }
    [result appendString:@"\n"];
    [result appendFormat:@"Machine is %@ \n", self.state];
    return result;
}

@end
