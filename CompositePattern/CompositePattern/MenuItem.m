//
//  MenuItem.m
//  CompositePattern
//
//  Created by buginux on 2017/6/1.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

- (void)print {
    NSMutableString *result = [NSMutableString string];
    [result appendFormat:@"  %@", self.name];
    if (self.isVegetarian) {
        [result appendString:@"(v)"];
    }
    [result appendFormat:@"%.2lf", self.price];
    [result appendFormat:@"\t--%@", self.desc];
    NSLog(@"%@", result);
    
    
}

@end
