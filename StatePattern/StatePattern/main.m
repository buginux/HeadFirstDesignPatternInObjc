//
//  main.m
//  StatePattern
//
//  Created by buginux on 2017/6/9.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GumballMachine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GumballMachine *gumballMachine = [[GumballMachine alloc] initWithNumberOfGumballs:2];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnGrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnGrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnGrank];
        
        NSLog(@"%@", gumballMachine);
    }
    return 0;
}
