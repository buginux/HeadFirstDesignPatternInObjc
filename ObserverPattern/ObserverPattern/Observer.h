//
//  Observer.h
//  ObserverPattern
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>

- (void)updateWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure;

@end
