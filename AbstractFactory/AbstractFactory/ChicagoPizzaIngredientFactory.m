//
//  ChicagoPizzaIngredientFactory.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ChicagoPizzaIngredientFactory.h"
#import "ThickCrustDough.h"
#import "PlumTomatoSauce.h"
#import "MozzarellaCheese.h"
#import "BlackOlives.h"
#import "Spinach.h"
#import "EggPlant.h"
#import "SlicedPepperoni.h"
#import "FrozenClams.h"

@implementation ChicagoPizzaIngredientFactory

- (id<Dough>)createDough {
    return [ThickCrustDough new];
}

- (id<Sauce>)createSauce {
    return [PlumTomatoSauce new];
}

- (id<Cheese>)createCheese {
    return [MozzarellaCheese new];
}

- (NSArray *)createVeggies {
    NSMutableArray *veggies = [NSMutableArray array];
    [veggies addObject:[BlackOlives new]];
    [veggies addObject:[Spinach new]];
    [veggies addObject:[EggPlant new]];
    return veggies;
}

- (id<Pepperoni>)createPepperoni {
    return [SlicedPepperoni new];
}

- (id<Clams>)createClam {
    return [FrozenClams new];
}

@end
