//
//  PopcornPopper.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "PopcornPopper.h"

@interface PopcornPopper ()

@property (nonatomic, strong) NSString *name;

@end

@implementation PopcornPopper

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)on {
    NSLog(@"Popcorn Popper on");
}

- (void)pop {
    NSLog(@"Popcorn Popper popping popcorn!");
}

- (void)off {
    NSLog(@"Popcorn Popper off");
}

@end
