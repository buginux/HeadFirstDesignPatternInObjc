//
//  TurkeyAdapter.m
//  AdapterPattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "TurkeyAdapter.h"

@interface TurkeyAdapter ()

@property (nonatomic, strong) id<Turkey> turkey;

@end

@implementation TurkeyAdapter

- (instancetype)initWithTurkey:(id<Turkey>)turkey {
    if (self = [super init]) {
        _turkey = turkey;
    }
    return self;
}

- (void)quack {
    [self.turkey gobble];
}

- (void)fly {
    for (NSInteger i = 0; i < 5; i++) {
        [self.turkey fly];
    }
}

@end
