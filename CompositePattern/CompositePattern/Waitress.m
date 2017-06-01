//
//  Waitress.m
//  CompositePattern
//
//  Created by buginux on 2017/6/1.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Waitress.h"
#import "MenuComponent.h"

@interface Waitress ()

@property (nonatomic, strong) MenuComponent *menus;

@end

@implementation Waitress

- (instancetype)initWithMenus:(MenuComponent *)menus {
    if (self = [super init]) {
        _menus = menus;
    }
    return self;
}

- (void)printMenu {
    [self.menus print];
}

@end
