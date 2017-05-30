//
//  Waitress.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@interface Waitress : NSObject

@property (nonatomic, strong) id<Menu> pancakeHouseMenu;
@property (nonatomic, strong) id<Menu> dinerMenu;
@property (nonatomic, strong) id<Menu> cafeMenu;

- (void)printMenu;

@end
