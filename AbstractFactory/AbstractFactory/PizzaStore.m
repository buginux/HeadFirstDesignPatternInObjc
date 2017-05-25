//
//  PizzaStore.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "PizzaStore.h"
#import "Pizza.h"

@implementation PizzaStore

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza;
    
    pizza = [self createPizza:type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

- (Pizza *)createPizza:(NSString *)type {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}

@end
