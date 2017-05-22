//
//  Beverage.h
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, BeverageSize) {
    BeverageSizeTall,
    BeverageSizeGrande,
    BeverageSizeVenti,
};

@interface Beverage : NSObject

@property (nonatomic, assign) BeverageSize size;

- (double)cost;

@end
