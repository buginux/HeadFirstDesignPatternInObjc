//
//  WeatherData.h
//  ObserverPatternWithNotification
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherData : NSObject

@property (nonatomic, assign) double temperature;
@property (nonatomic, assign) double humidity;
@property (nonatomic, assign) double pressure;

- (void)setMeasurementsWithTemperature:(double)temp humidity:(double)humidity pressure:(double)pressure;

@end
