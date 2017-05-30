//
//  CafeMenu.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu.h"

@interface CafeMenu : NSObject <Menu>

- (NSDictionary *)getMenuItems;

@end
