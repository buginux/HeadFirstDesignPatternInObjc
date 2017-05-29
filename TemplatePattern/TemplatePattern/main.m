//
//  main.m
//  TemplatePattern
//
//  Created by buginux on 2017/5/29.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tea.h"
#import "Coffee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tea *tea = [Tea new];
        Coffee *coffee = [Coffee new];
        
        NSLog(@"");
        NSLog(@"Making tea...");
        [tea prepareRecipe];
        
        NSLog(@"");
        NSLog(@"Making coffee...");
        [coffee prepareRecipe];
    }
    return 0;
}
