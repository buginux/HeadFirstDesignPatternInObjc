//
//  WeatherData.m
//  ObserverPatternWithNotification
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "WeatherData.h"

@implementation WeatherData

- (void)measurementsChanged {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"WeatherDataMeasurementsChangedNotification" object:self];
}

- (void)setMeasurementsWithTemperature:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    self.pressure = pressure;
    
    [self measurementsChanged];
}

@end
