//
//  Iterator.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/30.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>

- (BOOL)hasNext;
- (id)next;

@end
