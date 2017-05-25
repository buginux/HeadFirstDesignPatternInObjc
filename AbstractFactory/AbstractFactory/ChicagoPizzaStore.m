//
//  ChicagoPizzaStore.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/26.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoPizzaIngredientFactory.h"
#import "CheesePizza.h"
#import "VeggiePizza.h"
#import "ClamPizza.h"
#import "PepperoniPizza.h"

@implementation ChicagoPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza;
    id<PizzaIngredientFactory> ingredientFactory = [ChicagoPizzaIngredientFactory new];
    
    if ([type isEqualToString:@"cheese"]) {
        pizza = [[CheesePizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"Chicago Style Cheese Pizza";
    } else if ([type isEqualToString:@"veggie"]) {
        pizza = [[VeggiePizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"Chicago Style Veggie Pizza";
    } else if ([type isEqualToString:@"clam"]) {
        pizza = [[ClamPizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"Chicago Style Clam Pizza";
    } else if ([type isEqualToString:@"pepperoni"]) {
        pizza = [[PepperoniPizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"Chicago Style Pepperoni Pizza";
    }
    return pizza;
}

@end
