//
//  State.h
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol State <NSObject>

- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;

@end
