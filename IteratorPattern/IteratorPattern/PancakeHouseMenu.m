//
//  PancakeHouseMenu.m
//  IteratorPattern
//
//  Created by buginux on 2017/5/30.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "PancakeHouseMenu.h"
#import "MenuItem.h"
#import "LinkedList.h"
#import "PancakeHouseIterator.h"

@interface PancakeHouseMenu ()

@property (nonatomic, strong) LinkedList *menuItems;

@end

@implementation PancakeHouseMenu

- (instancetype)init {
    if (self = [super init]) {
        _menuItems = [LinkedList new];
        [self initData];
    }
    return self;
}

- (void)initData {
    [self addItemWitName:@"K&B's Pancake Breakfast" description:@"Pancakes with scrambled eggs, and toast" vegetarian:YES price:2.99];
    
    [self addItemWitName:@"Regular Pancake Breakfast" description:@"Pancakes with fried eggs, sausage" vegetarian:NO price:2.99];
    
    [self addItemWitName:@"Bluebeery Pancakes" description:@"Pancakes made with fresh blueberries, and blueberry syrup" vegetarian:YES price:3.49];
    
    [self addItemWitName:@"Waffles" description:@"Waffles, with your choice of blueberries or strawberries" vegetarian:YES price:3.59];
}

- (void)addItemWitName:(NSString *)name description:(NSString *)description vegetarian:(BOOL)vegetarian price:(double)price {
    MenuItem *menuItem = [[MenuItem alloc] init];
    menuItem.name = name;
    menuItem.introduction = description;
    menuItem.vegetarian = vegetarian;
    menuItem.price = price;
    
    [self.menuItems addItem:menuItem];
}

- (id<Iterator>)createIterator {
    return [[PancakeHouseIterator alloc] initWithMenuItems:[self getMenuItems]];
}

- (LinkedList *)getMenuItems {
    return self.menuItems;
}

@end
