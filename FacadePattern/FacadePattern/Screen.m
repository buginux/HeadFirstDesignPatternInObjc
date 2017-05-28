//
//  Screen.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Screen.h"

@interface Screen ()

@property (nonatomic, strong) NSString *name;

@end

@implementation Screen

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)up {
    NSLog(@"%@ going up", self.name);
}

- (void)down {
    NSLog(@"%@ going down", self.name);
}

- (NSString *)description {
    return self.name;
}
    
@end
