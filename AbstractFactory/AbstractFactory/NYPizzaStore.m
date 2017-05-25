//
//  NYPizzaStore.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYPizzaIngredientFactory.h"
#import "CheesePizza.h"
#import "VeggiePizza.h"
#import "ClamPizza.h"
#import "PepperoniPizza.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza;
    id<PizzaIngredientFactory> ingredientFactory = [NYPizzaIngredientFactory new];
    
    if ([type isEqualToString:@"cheese"]) {
        pizza = [[CheesePizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"New York Style Cheese Pizza";
    } else if ([type isEqualToString:@"veggie"]) {
        pizza = [[VeggiePizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"New York Style Veggie Pizza";
    } else if ([type isEqualToString:@"clam"]) {
        pizza = [[ClamPizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"New York Style Clam Pizza";
    } else if ([type isEqualToString:@"pepperoni"]) {
        pizza = [[PepperoniPizza alloc] initWithIngredientFactory:ingredientFactory];
        pizza.name = @"New York Style Pepperoni Pizza";
    }
    return pizza;
}

@end
