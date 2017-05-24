//
//  ChocolateBoiler.h
//  Singleton
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChocolateBoiler : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)sharedInstance;

- (void)fill;
- (void)drain;
- (void)boil;

@end
