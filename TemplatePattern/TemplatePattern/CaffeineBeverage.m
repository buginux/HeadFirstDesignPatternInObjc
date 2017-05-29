//
//  CaffeineBeverage.m
//  TemplatePattern
//
//  Created by buginux on 2017/5/29.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CaffeineBeverage.h"

@implementation CaffeineBeverage

- (void)prepareRecipe {
    [self boilWater];
    [self brew];
    [self pourInCup];
    if ([self customerWantsCondiments]) {
        [self addCondiments];
    }
}

- (void)brew {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)addCondiments {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

- (void)boilWater {
    NSLog(@"Boiling water");
}

- (void)pourInCup {
    NSLog(@"Pouring into cup");
}

- (BOOL)customerWantsCondiments {
    return YES;
}

@end
