//
//  main.m
//  AdapterPattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "WildTurkey.h"
#import "TurkeyAdapter.h"

void testDuck(id<Duck> duck) {
    [duck quack];
    [duck fly];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MallardDuck *duck = [MallardDuck new];
        
        WildTurkey *turkey = [WildTurkey new];
        id<Duck> turkeyAdapter = [[TurkeyAdapter alloc] initWithTurkey:turkey];
        
        NSLog(@"The turkey says...");
        [turkey gobble];
        [turkey fly];
        
        NSLog(@"");
        NSLog(@"The duck says...");
        testDuck(duck);
        
        NSLog(@"");
        NSLog(@"The turkeyAdapter says...");
        testDuck(turkeyAdapter);
    }
    return 0;
}



