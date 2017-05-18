//
//  Quack.h
//  StrategyPattern
//
//  Created by buginux on 2017/5/18.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuackBehavior.h"

@interface Quack : NSObject <QuackBehavior>

- (void)quack;

@end
