//
//  main.m
//  Singleton
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChocolateBoiler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ChocolateBoiler *boiler = [ChocolateBoiler sharedInstance];
        NSLog(@"%@", boiler);
        [boiler fill];
        [boiler boil];
        [boiler drain];
        
        ChocolateBoiler *boiler2 = [ChocolateBoiler sharedInstance];
        NSLog(@"%@", boiler2);
    }
    return 0;
}
