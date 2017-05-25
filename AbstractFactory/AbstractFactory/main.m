//
//  main.m
//  AbstractFactory
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NYPizzaStore.h"
#import "ChicagoPizzaStore.h"
#import "Pizza.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PizzaStore *nyStore = [NYPizzaStore new];
        PizzaStore *chicagoStore = [ChicagoPizzaStore new];
        
        Pizza *pizza = [nyStore orderPizza:@"cheese"];
        NSLog(@"Ethan ordered a %@", pizza.name);
        NSLog(@"");
        
        pizza = [chicagoStore orderPizza:@"cheese"];
        NSLog(@"Joel ordered a %@", pizza.name);
        NSLog(@"");
    }
    return 0;
}
