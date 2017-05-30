//
//  Menu.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

@protocol Menu <NSObject>

- (id<Iterator>)createIterator;

@end
