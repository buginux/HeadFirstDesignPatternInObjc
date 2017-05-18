//
//  main.m
//  StrategyPattern
//
//  Created by buginux on 2017/5/18.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "ModelDuck.h"
#import "FlyRocketPowered.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Duck *mallard = [MallardDuck new];
        [mallard performFly];
        [mallard performQuack];
        
        Duck *model = [ModelDuck new];
        [model performFly];
        model.flyBehavior = [FlyRocketPowered new];
        [model performFly];
    }
    return 0;
}
