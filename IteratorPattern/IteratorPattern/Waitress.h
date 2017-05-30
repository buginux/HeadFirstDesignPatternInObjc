//
//  Waitress.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PancakeHouseMenu, DinerMenu;
@interface Waitress : NSObject

@property (nonatomic, strong) PancakeHouseMenu *pancakeHouseMenu;
@property (nonatomic, strong) DinerMenu *dinerMenu;

- (void)printMenu;

@end
