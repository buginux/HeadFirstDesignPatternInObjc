//
//  ChicagoStyleCheesePizza.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ChicagoStyleCheesePizza.h"

@implementation ChicagoStyleCheesePizza

- (instancetype)init {
    if (self = [super init]) {
        self.name = @"Chicago Style Deep Dish Cheese Pizza";
        self.dough = @"Extra Thick Crust Dough";
        self.sauce = @"Plum Tomato Sauce";
        
        [self.toppings addObject:@"Shredded Mozzarella Cheese"];
    }
    return self;
}

- (void)cut {
    NSLog(@"Cutting the pizza into square slices");
}

@end
