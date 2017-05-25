//
//  ChicagoPizzaStore.m
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoStyleCheesePizza.h"
#import "ChicagoStyleVeggiePizza.h"
#import "ChicagoStyleClamPizza.h"
#import "ChicagoStylePepperoniPizza.h"

@implementation ChicagoPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    if ([type isEqualToString:@"cheese"]) {
        return [ChicagoStyleCheesePizza new];
    } else if ([type isEqualToString:@"veggie"]) {
        return [ChicagoStyleCheesePizza new];
    } else if ([type isEqualToString:@"clam"]) {
        return [ChicagoStyleClamPizza new];
    } else if ([type isEqualToString:@"pepperoni"]) {
        return [ChicagoStylePepperoniPizza new];
    } else {
        return nil;
    }
}

@end
