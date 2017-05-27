//
//  GarageDoor.h
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GarageDoor : NSObject

- (instancetype)initWithLocation:(NSString *)location;

- (void)up;
- (void)down;
- (void)stop;
- (void)lightOn;
- (void)lightOff;

@end
