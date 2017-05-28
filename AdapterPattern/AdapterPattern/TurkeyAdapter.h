//
//  TurkeyAdapter.h
//  AdapterPattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Duck.h"
#import "Turkey.h"

@interface TurkeyAdapter : NSObject <Duck>

- (instancetype)initWithTurkey:(id<Turkey>)turkey;

@end
