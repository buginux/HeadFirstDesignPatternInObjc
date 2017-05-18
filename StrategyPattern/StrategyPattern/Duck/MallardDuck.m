//
//  MallardDuck.m
//  StrategyPattern
//
//  Created by buginux on 2017/5/18.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "MallardDuck.h"
#import "FlyWithWings.h"
#import "Quack.h"

@implementation MallardDuck

- (instancetype)init {
    if (self = [super init]) {
        self.flyBehavior = [FlyWithWings new];
        self.quackBehavior = [Quack new];
    }
    return self;
}

- (void)display {
    NSLog(@"I'm a real Mallaard duck");
}

@end
