//
//  RemoteControl.h
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface RemoteControl : NSObject

- (void)setCommandAtSlot:(NSInteger)slot withOnCommand:(id<Command>)onCommand offCommand:(id<Command>)offCommand;
- (void)pushOnButtonAtSlot:(NSInteger)slot;
- (void)pushOffButtonAtSlot:(NSInteger)slot;

@end
