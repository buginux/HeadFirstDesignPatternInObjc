//
//  ChocolateBoiler.m
//  Singleton
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ChocolateBoiler.h"

@interface ChocolateBoiler ()

@property (nonatomic, assign, getter=isEmpty) BOOL empty;
@property (nonatomic, assign, getter=isBoiled) BOOL boiled;

@end

@implementation ChocolateBoiler

+ (instancetype)sharedInstance {
    static ChocolateBoiler *chocolateBoiler;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        chocolateBoiler = [ChocolateBoiler new];
    });
    return chocolateBoiler;
}

- (instancetype)init {
    if (self = [super init]) {
        _boiled = NO;
        _empty = YES;
    }
    return self;
}

- (void)fill {
    if (self.isEmpty) {
        self.empty = NO;
        self.boiled = NO;
        // fill the boiler with a milk/chocolate mixture
    }
}

- (void)drain {
    if (!self.isEmpty && self.isBoiled) {
        // drain the boiled milk and chocolate
        self.empty = YES;
    }
}

- (void)boil {
    if (!self.isEmpty && !self.isBoiled) {
        // bring the contents to a boil
        self.boiled = true;
    }
}

@end
