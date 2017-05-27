//
//  CeilingFan.h
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, CeilingFanSpeed) {
    CeilingFanSpeedHigh,
    CeilingFanSpeedMedium,
    CeilingFanSpeedLow,
};

@interface CeilingFan : NSObject

@property (nonatomic, assign, readonly) CeilingFanSpeed speed;

- (instancetype)initWithLocation:(NSString *)location;

- (void)high;
- (void)medium;
- (void)low;
- (void)off;

@end
