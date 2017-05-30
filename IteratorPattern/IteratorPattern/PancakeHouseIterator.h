//
//  PancakeHouseIterator.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@class LinkedList;
@interface PancakeHouseIterator : NSObject <Iterator>

- (instancetype)initWithMenuItems:(LinkedList *)menuItems;

@end
