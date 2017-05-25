//
//  ClamPizza.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/26.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ClamPizza.h"

@interface ClamPizza ()

@property (nonatomic, strong) id<PizzaIngredientFactory> ingredientFactory;

@end

@implementation ClamPizza

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
    self.clam = [self.ingredientFactory createClam];
}

@end
