//
//  Pizza.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (void)prepare {
    NSLog(@"Preparing %@", self.name);
    NSLog(@"Tossing dough...");
    NSLog(@"Adding sauce...");
    NSLog(@"Adding toppings: ");
    for (NSString *toping in self.toppings) {
        NSLog(@"   %@", toping);
    }
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

@end
