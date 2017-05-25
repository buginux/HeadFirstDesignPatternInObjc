//
//  CheesePizza.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/26.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CheesePizza.h"

@interface CheesePizza ()

@property (nonatomic, strong) id<PizzaIngredientFactory> ingredientFactory;

@end

@implementation CheesePizza

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
}

@end
