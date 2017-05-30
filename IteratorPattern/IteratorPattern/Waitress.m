//
//  Waitress.m
//  IteratorPattern
//
//  Created by buginux on 2017/5/31.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Waitress.h"
#import "Iterator.h"
#import "PancakeHouseMenu.h"
#import "DinerMenu.h"
#import "MenuItem.h"

@implementation Waitress

- (void)printMenu {
    id<Iterator> pancakeIterator = [self.pancakeHouseMenu createIterator];
    id<Iterator> dinerIterator = [self.dinerMenu createIterator];
    NSLog(@"MENU\n----\nBREAKFAST");
    [self printMenu:pancakeIterator];
    NSLog(@"\nLUNCH");
    [self printMenu:dinerIterator];
}

- (void)printMenu:(id<Iterator>)iterator {
    while ([iterator hasNext]) {
        MenuItem *menuItem = [iterator next];
        NSLog(@"%@, %.2lf -- %@", menuItem.name, menuItem.price, menuItem);
    }
}

@end
