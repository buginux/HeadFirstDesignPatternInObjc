//
//  Beverage.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Beverage.h"

@implementation Beverage

- (instancetype)init {
    if (self = [super init]) {
        _size = BeverageSizeTall;
    }
    return self;
}

// Abstract method
- (double)cost {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must ovveride %@ in a subclass", NSStringFromSelector(_cmd)] userInfo:nil];
}

@end
