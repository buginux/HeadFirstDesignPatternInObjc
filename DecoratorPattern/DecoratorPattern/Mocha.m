//
//  Mocha.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

- (double)cost {
    return [self.beverage cost] + .20;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Mocha", self.beverage];
}

@end
