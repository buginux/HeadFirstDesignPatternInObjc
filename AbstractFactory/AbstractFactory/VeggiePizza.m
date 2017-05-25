//
//  VeggiePizza.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/26.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "VeggiePizza.h"

@interface VeggiePizza ()

@property (nonatomic, strong) id<PizzaIngredientFactory> ingredientFactory;

@end

@implementation VeggiePizza

- (instancetype)initWithIngredientFactory:(id<PizzaIngredientFactory>)factory {
    if (self = [super init]) {
        _ingredientFactory = factory;
    }
    return self;
}

- (void)prepare {
    NSLog(@"Preparing %@", self.name);
    self.dough = [self.ingredientFactory createDough];
    self.sauce = [self.ingredientFactory createSauce];
    self.cheese = [self.ingredientFactory createCheese];
    self.veggies = [self.ingredientFactory createVeggies];
}

@end
