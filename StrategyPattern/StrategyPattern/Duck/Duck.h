//
//  Duck.h
//  StrategyPattern
//
//  Created by buginux on 2017/5/18.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck : NSObject

@property (nonatomic, strong) id<FlyBehavior> flyBehavior;
@property (nonatomic, strong) id<QuackBehavior> quackBehavior;

- (void)swim;
- (void)display;

- (void)performFly;
- (void)performQuack;

@end
