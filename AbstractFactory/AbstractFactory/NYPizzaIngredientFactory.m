//
//  NYPizzaIngredientFactory.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "NYPizzaIngredientFactory.h"
#import "ThinCrustDough.h"
#import "MarinaraSauce.h"
#import "ReggianoCheese.h"
#import "Garlic.h"
#import "Onion.h"
#import "Mushroom.h"
#import "RedPepper.h"
#import "SlicedPepperoni.h"
#import "FreshClams.h"

@implementation NYPizzaIngredientFactory

- (id<Dough>)createDough {
    return [ThinCrustDough new];
}

- (id<Sauce>)createSauce {
    return [MarinaraSauce new];
}

- (id<Cheese>)createCheese {
    return [ReggianoCheese new];
}

- (NSArray *)createVeggies {
    NSMutableArray *veggies = [NSMutableArray array];
    [veggies addObject:[Garlic new]];
    [veggies addObject:[Onion new]];
    [veggies addObject:[Mushroom new]];
    [veggies addObject:[RedPepper new]];
    return veggies;
}

- (id<Pepperoni>)createPepperoni {
    return [SlicedPepperoni new];
}

- (id<Clams>)createClam {
    return [FreshClams new];
}

@end
