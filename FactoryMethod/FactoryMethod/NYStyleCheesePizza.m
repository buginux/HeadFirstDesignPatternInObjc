//
//  NYStyleCheesePizza.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "NYStyleCheesePizza.h"

@implementation NYStyleCheesePizza

- (instancetype)init {
    if (self = [super init]) {
        self.name = @"NY Style Sauce and Cheese Pizza";
        self.dough = @"Thin Crust Dough";
        self.sauce = @"Marinara Sauce";
        
        [self.toppings addObject:@"Grated Reggiano Cheese"];
    }
    return self;
}

@end
