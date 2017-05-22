//
//  Soy.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Soy.h"

@implementation Soy

- (double)cost {
    double cost = [self.beverage cost];
    switch (self.beverage.size) {
        case BeverageSizeTall:
            cost += .10;
            break;
            
        case BeverageSizeGrande:
            cost += .15;
            break;
            
        case BeverageSizeVenti:
            cost += .20;
            break;
    }
    
    return cost + .15;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Soy", self.beverage];
}

@end
