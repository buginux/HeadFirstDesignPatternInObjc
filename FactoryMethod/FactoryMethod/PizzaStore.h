//
//  PizzaStore.h
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza;
@interface PizzaStore : NSObject

- (Pizza *)orderPizza:(NSString *)type;
- (Pizza *)createPizza:(NSString *)type;

@end
