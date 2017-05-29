//
//  Tea.m
//  TemplatePattern
//
//  Created by buginux on 2017/5/29.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "Tea.h"

@implementation Tea

- (void)brew {
    NSLog(@"Steeping the tea");
}

- (void)addCondiments {
    NSLog(@"Adding Lemon");
}

- (BOOL)customerWantsCondiments {
    NSString *answer = [self getUserInput];
    
    if ([[answer lowercaseString] hasPrefix:@"y"]) {
        return YES;
    } else {
        return NO;
    }
}

- (NSString *)getUserInput {
    NSLog(@"Would you like milk and sugar with your coffee (y/n)? ");
    char answer[2];
    scanf("%s", answer);
    
    NSString *result = [NSString stringWithUTF8String:answer];
    
    return result;
}

@end
