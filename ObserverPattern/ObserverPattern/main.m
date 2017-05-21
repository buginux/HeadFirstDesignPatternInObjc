//
//  main.m
//  ObserverPattern
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
        
        CurrentConditionsDisplay *currentDisplay = [[CurrentConditionsDisplay alloc] initWithWeatherData:weatherData];
        StatisticsDisplay *statisticsDisplay = [[StatisticsDisplay alloc] initWithWeatherData:weatherData];
        ForecastDisplay *forecastDisplay = [[ForecastDisplay alloc] initWithWeatherData:weatherData];
        HeatIndexDisplay *heatIndexDisplay = [[HeatIndexDisplay alloc] initWithWeatherData:weatherData];
        
        [weatherData registerObserver:currentDisplay];
        [weatherData registerObserver:statisticsDisplay];
        [weatherData registerObserver:forecastDisplay];
        [weatherData registerObserver:heatIndexDisplay];
        
        [weatherData setMeasurementsWithTemp:80 humidity:65 pressure:30.4f];
        [weatherData setMeasurementsWithTemp:82 humidity:70 pressure:29.2f];
        [weatherData setMeasurementsWithTemp:78 humidity:90 pressure:29.2f];
    }
    return 0;
}
