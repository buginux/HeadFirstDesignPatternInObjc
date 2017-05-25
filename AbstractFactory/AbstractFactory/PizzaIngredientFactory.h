//
//  PizzaIngredientFactory.h
//  AbstractFactory
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Dough, Sauce, Cheese, Veggies, Pepperoni, Clams;
@protocol PizzaIngredientFactory <NSObject>

- (id<Dough>)createDough;
- (id<Sauce>)createSauce;
- (id<Cheese>)createCheese;
- (NSArray *)createVeggies;
- (id<Pepperoni>)createPepperoni;
- (id<Clams>)createClam;

@end
