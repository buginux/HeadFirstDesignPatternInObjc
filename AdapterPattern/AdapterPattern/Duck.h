//
//  Duck.h
//  AdapterPattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Duck <NSObject>

- (void)quack;
- (void)fly;

@end
