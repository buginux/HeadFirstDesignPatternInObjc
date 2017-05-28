//
//  TheaterLights.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TheaterLights : NSObject

- (instancetype)initWithName:(NSString *)name;
- (void)on;
- (void)off;
- (void)dimToLevel:(NSInteger)level;

@end
