//
//  DinerMenu.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/30.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@class MenuItem;
@interface DinerMenu : NSObject

- (NSArray *)getMenuItems;
- (id<Iterator>)createIterator;

@end
