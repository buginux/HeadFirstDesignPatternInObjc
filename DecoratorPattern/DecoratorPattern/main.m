//
//  main.m
//  DecoratorPattern
//
//  Created by buginux on 2017/5/23.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Espresso.h"
#import "DarkRoast.h"
#import "HouseBlend.h"
#import "Mocha.h"
#import "Whip.h"
#import "Soy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Beverage *beverage = [Espresso new];
        NSLog(@"%@ $%.2lf", beverage, [beverage cost]);
        
        Beverage *beverage2 = [DarkRoast new];
        beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
        beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
        beverage2 = [[Whip alloc] initWithBeverage:beverage2];
        NSLog(@"%@ $%.2lf", beverage2, [beverage2 cost]);
        
        Beverage *beverage3 = [HouseBlend new];
        beverage3 = [[Soy alloc] initWithBeverage:beverage3];
        beverage3 = [[Mocha alloc] initWithBeverage:beverage3];
        beverage3 = [[Whip alloc] initWithBeverage:beverage3];
        NSLog(@"%@ $%.2lf", beverage3, [beverage3 cost]);
    }
    return 0;
}
