//
//  CaffeineBeverage.h
//  TemplatePattern
//
//  Created by buginux on 2017/5/29.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaffeineBeverage : NSObject

- (void)prepareRecipe;
- (void)brew;
- (void)addCondiments;
- (void)boilWater;
- (void)pourInCup;
- (BOOL)customerWantsCondiments;

@end
