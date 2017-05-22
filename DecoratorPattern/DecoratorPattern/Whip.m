//
//  Whip.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Whip.h"

@implementation Whip

- (double)cost {
    return [self.beverage cost] + .10;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Whip", self.beverage];
}

@end
