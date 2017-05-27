//
//  Command.h
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Command <NSObject>

- (void)execute;

@end
