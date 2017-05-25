//
//  PepperoniPizza.h
//  AbstractFactory
//
//  Created by buginux on 2017/5/26.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Pizza.h"
#import "PizzaIngredientFactory.h"

@interface PepperoniPizza : Pizza

- (instancetype)initWithIngredientFactory:(id<PizzaIngredientFactory>)factory;

@end
