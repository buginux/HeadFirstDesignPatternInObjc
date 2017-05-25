//
//  Pizza.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (void)prepare {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must ovveride %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}

- (void)bake {
    NSLog(@"Bake for 25 minutes at 350");
}

- (void)cut {
    NSLog(@"Cutting the pizza into diagonal slices");
}

- (void)box {
    NSLog(@"Place pizza in official PizzaStore box");
}

- (NSString *)description {
    NSMutableString *result = [NSMutableString string];
    [result appendFormat:@"---- %@ ----\n", self.name];
    if (self.dough) {
        [result appendFormat:@"%@\n", self.dough];
    }
    if (self.sauce) {
        [result appendFormat:@"%@\n", self.sauce];
    }
    if (self.cheese) {
        [result appendFormat:@"%@\n", self.cheese];
    }
    if (self.veggies) {
        for (int i = 0; i < self.veggies.count; i++) {
            [result appendFormat:@"%@\n", self.cheese[i]];
            if (i < self.veggies.count-1) {
                [result appendString:@", "];
            }
        }
        [result appendString:@"\n"];
    }
    if (self.clam) {
        [result appendFormat:@"%@\n", self.clam];
    }
    if (self.pepperoni) {
        [result appendFormat:@"%@\n", self.pepperoni];
    }
    return result;
}

@end
