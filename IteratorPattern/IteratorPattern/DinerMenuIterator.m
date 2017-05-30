//
//  DinerMenuIterator.m
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "DinerMenuIterator.h"
#import "MenuItem.h"

@interface DinerMenuIterator ()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) NSUInteger position;

@end

@implementation DinerMenuIterator

- (instancetype)initWithMenuItems:(NSArray *)items {
    if (self = [super init]) {
        _items = items;
    }
    return self;
}

- (id)next {
    MenuItem *menuItem = self.items[self.position];
    self.position++;
    return menuItem;
}

- (BOOL)hasNext {
    if (self.position >= self.items.count || !self.items[self.position]) {
        return NO;
    } else {
        return YES;
    }
}

@end
