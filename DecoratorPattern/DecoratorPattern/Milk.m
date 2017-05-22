//
//  Milk.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Milk.h"

@implementation Milk

- (double)cost {
    return [self.beverage cost] + .10;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Milk", self.beverage];
}

@end
