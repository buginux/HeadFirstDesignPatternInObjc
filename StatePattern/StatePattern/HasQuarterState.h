//
//  HasQuarterState.h
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@class GumballMachine;
@interface HasQuarterState : NSObject <State>

- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine;

@end
