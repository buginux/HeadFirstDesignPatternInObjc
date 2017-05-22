//
//  CondimentDecorator.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator

- (instancetype)initWithBeverage:(Beverage *)beverage {
    if (self =[super init]) {
        _beverage = beverage;
    }
    return self;
}

@end
