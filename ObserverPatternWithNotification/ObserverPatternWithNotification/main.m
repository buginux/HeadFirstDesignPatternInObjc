//
//  main.m
//  ObserverPatternWithNotification
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherData.h"
#import "CurrentConditionsDisplay.h"
#import "StatisticsDisplay.h"
#import "ForecastDisplay.h"
#import "HeatIndexDisplay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        WeatherData *weatherData = [WeatherData new];
        
        CurrentConditionsDisplay *currentConditionsDisplay __attribute__((unused)) = [CurrentConditionsDisplay new];
        StatisticsDisplay *statistcsDisplay __attribute__((unused)) = [StatisticsDisplay new];
        ForecastDisplay *forecastDisplay __attribute__((unused)) = [ForecastDisplay new];
        HeatIndexDisplay *heatIndexDisplay __attribute__((unused)) = [HeatIndexDisplay new];
        
        [weatherData setMeasurementsWithTemperature:80 humidity:65 pressure:30.4f];
        [weatherData setMeasurementsWithTemperature:82 humidity:70 pressure:29.2f];
        [weatherData setMeasurementsWithTemperature:78 humidity:90 pressure:29.2f];
    }
    return 0;
}
