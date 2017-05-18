//
//  ModelDuck.m
//  StrategyPattern
//
//  Created by buginux on 2017/5/18.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ModelDuck.h"
#import "FlyNoWay.h"
#import "Quack.h"

@implementation ModelDuck

- (instancetype)init {
    if (self = [super init]) {
        self.flyBehavior = [FlyNoWay new];
        self.quackBehavior = [Quack new];
    }
    return self;
}

- (void)display {
    NSLog(@"I'm a model duck");
}

@end
