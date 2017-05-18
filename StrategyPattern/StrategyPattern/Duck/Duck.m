//
//  Duck.m
//  StrategyPattern
//
//  Created by buginux on 2017/5/18.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)swim {
    NSLog(@"All ducks float, even decoys!");
}

// Abstract method
- (void)display {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)performFly {
    [self.flyBehavior fly];
}

- (void)performQuack {
    [self.quackBehavior quack];
}

@end
