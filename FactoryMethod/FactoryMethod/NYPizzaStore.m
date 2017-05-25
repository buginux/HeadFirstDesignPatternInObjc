//
//  NYPizzaStore.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleCheesePizza.h"
#import "NYStyleVeggiePizza.h"
#import "NYStyleClamPizza.h"
#import "NYStylePepperoniPizza.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    if ([type isEqualToString:@"cheese"]) {
        return [NYStyleCheesePizza new];
    } else if ([type isEqualToString:@"veggie"]) {
        return [NYStyleVeggiePizza new];
    } else if ([type isEqualToString:@"clam"]) {
        return [NYStyleClamPizza new];
    } else if ([type isEqualToString:@"pepperoni"]) {
        return [NYStylePepperoniPizza new];
    } else {
        return nil;
    }
}

@end
