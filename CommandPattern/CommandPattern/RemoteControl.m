//
//  RemoteControl.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "RemoteControl.h"
#import "NoCommand.h"

@interface RemoteControl ()

@property (nonatomic, strong) NSMutableArray *onCommands;
@property (nonatomic, strong) NSMutableArray *offCommands;

@end

@implementation RemoteControl

- (instancetype)init {
    if (self = [super init]) {\
        _onCommands = [NSMutableArray arrayWithCapacity:7];
        _offCommands = [NSMutableArray arrayWithCapacity:7];
        
        for (NSUInteger i = 0; i < 7; i++) {
            id<Command> noCommand = [NoCommand new];
            _onCommands[i] = noCommand;
            _offCommands[i] = noCommand;
        }
    }
    return self;
}

- (void)setCommandAtSlot:(NSInteger)slot withOnCommand:(id<Command>)onCommand offCommand:(id<Command>)offCommand {
    self.onCommands[slot] = onCommand;
    self.offCommands[slot] = offCommand;
}

- (void)pushOnButtonAtSlot:(NSInteger)slot {
    [self.onCommands[slot] execute];
}

- (void)pushOffButtonAtSlot:(NSInteger)slot {
    [self.offCommands[slot] execute];
}

- (NSString *)description {
    NSMutableString *result = [NSMutableString string];
    [result appendString:@"\n------ Remote Control ------\n"];
    for (NSUInteger i = 0; i < self.onCommands.count; i++) {
        [result appendFormat:@"[slot %lu] %@\t\t%@\n", i, NSStringFromClass([self.onCommands[i] class]), NSStringFromClass([self.offCommands[i] class])];
    }
    return result;
}

@end
