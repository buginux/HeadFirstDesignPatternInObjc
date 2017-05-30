//
//  CafeMenu.m
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CafeMenu.h"
#import "MenuItem.h"
#import "CafaMenuIterator.h"

@interface CafeMenu ()

@property (nonatomic, strong) NSMutableDictionary *menuItems;

@end

@implementation CafeMenu

- (instancetype)init {
    if (self = [super init]) {
        _menuItems = [NSMutableDictionary dictionary];
        [self initData];
    }
    return self;
}

- (void)initData {
    [self addItemWitName:@"Veggie Burger and Air Fries" description:@"Veggie burger on a whole wheat bun, lettuce, tomato, and fries" vegetarian:YES price:3.99];
    [self addItemWitName:@"Soup of the day" description:@"A cup of the soup of the day, with a side salad" vegetarian:NO price:3.69];
    [self addItemWitName:@"Burrito" description:@"A large burrito, with whole pinto beans, salsa, guacamole" vegetarian:YES price:4.29];
}

- (void)addItemWitName:(NSString *)name description:(NSString *)description vegetarian:(BOOL)vegetarian price:(double)price {
    MenuItem *menuItem = [[MenuItem alloc] init];
    menuItem.name = name;
    menuItem.introduction = description;
    menuItem.vegetarian = vegetarian;
    menuItem.price = price;
    
    [self.menuItems setObject:menuItem forKey:menuItem.name];
}

- (NSDictionary *)getMenuItems {
    return self.menuItems;
}

- (id<Iterator>)createIterator {
    return [[CafaMenuIterator alloc] initWithMenuItems:[self getMenuItems]];
}

@end
