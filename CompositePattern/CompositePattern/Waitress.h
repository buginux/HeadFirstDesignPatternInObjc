//
//  Waitress.h
//  CompositePattern
//
//  Created by buginux on 2017/6/1.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MenuComponent;
@interface Waitress : NSObject

- (instancetype)initWithMenus:(MenuComponent *)menus;
- (void)printMenu;

@end
