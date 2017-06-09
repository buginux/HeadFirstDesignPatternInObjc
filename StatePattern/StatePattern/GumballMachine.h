//
//  GumballMachine.h
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@interface GumballMachine : NSObject

- (instancetype)initWithNumberOfGumballs:(NSInteger)numOfGumballs;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnGrank;
- (void)releaseBall;

@property (nonatomic, assign) NSInteger count;
@property (nonatomic, strong) id<State> state;
@property (nonatomic, strong, readonly) id<State> soldOutState;
@property (nonatomic, strong, readonly) id<State> noQuarterState;
@property (nonatomic, strong, readonly) id<State> hasQuarterState;
@property (nonatomic, strong, readonly) id<State> soldState;

@end
