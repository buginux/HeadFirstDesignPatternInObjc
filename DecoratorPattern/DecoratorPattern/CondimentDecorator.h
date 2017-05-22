//
//  CondimentDecorator.h
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Beverage.h"

@interface CondimentDecorator : Beverage

@property (nonatomic, strong) Beverage *beverage;

- (instancetype)initWithBeverage:(Beverage *)beverage;

@end
