//
//  DinerMenu.m
//  IteratorPattern
//
//  Created by buginux on 2017/5/30.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "DinerMenu.h"
#import "MenuItem.h"
#import "DinerMenuIterator.h"

@interface DinerMenu ()

@property (nonatomic, strong) NSMutableArray *internalMenuItems;

@end

@implementation DinerMenu

- (instancetype)init {
    if (self = [super init]) {
        _internalMenuItems = [[NSMutableArray alloc] initWithCapacity:6];
        [self initData];
    }
    return self;
}

- (void)initData {
    [self addItemWithName:@"Vegetarian BLT" description:@"(Fakin') Bacon with lettuce & tomato on whole wheat" vegetarian:NO price:2.99];
    [self addItemWithName:@"BLT" description:@"Bacon with lettuce & tomato on whole wheat" vegetarian:NO price:2.99];
    [self addItemWithName:@"Soup of the day" description:@"Soup of the day, with a side of potato salad" vegetarian:NO price:3.29];
    [self addItemWithName:@"Hotdog" description:@"A hot dog with saurkraut, relish, onions topped with cheese" vegetarian:NO price:3.05];
    [self addItemWithName:@"Steamed Veggies and Brown Rice" description:@"Steamed Vegetables" vegetarian:YES price:3.99];
    [self addItemWithName:@"Pasta" description:@"Spaghetti with Marinara Sauce, and slice of sourdough bread" vegetarian:YES price:3.89];
}

- (void)addItemWithName:(NSString *)name description:(NSString *)description vegetarian:(BOOL)vegetarian price:(double)price {
    MenuItem *menuItem = [[MenuItem alloc] init];
    menuItem.name = name;
    menuItem.introduction = description;
    menuItem.vegetarian = vegetarian;
    menuItem.price = price;
    
    [self.internalMenuItems addObject:menuItem];
}

- (NSArray *)getMenuItems {
    return self.internalMenuItems;
}

- (id<Iterator>)createIterator {
    return [[DinerMenuIterator alloc] initWithMenuItems:[self getMenuItems]];
}

@end
