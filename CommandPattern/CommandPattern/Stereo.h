//
//  Stereo.h
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stereo : NSObject

- (instancetype)initWithLocation:(NSString *)location;

- (void)on;
- (void)off;
- (void)setCD;
- (void)setVolume:(NSInteger)volume;

@end
