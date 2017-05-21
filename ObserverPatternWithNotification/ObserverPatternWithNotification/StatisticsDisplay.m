//
//  StatisticsDisplay.m
//  ObserverPatternWithNotification
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "StatisticsDisplay.h"
#import "WeatherData.h"

@interface StatisticsDisplay ()

@property (nonatomic, assign) double maxTemp;
@property (nonatomic, assign) double minTemp;
@property (nonatomic, assign) double tempSum;
@property (nonatomic, assign) NSInteger numReading;

@end

@implementation StatisticsDisplay

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (instancetype)init {
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(update:) name:@"WeatherDataMeasurementsChangedNotification" object:nil];
    }
    return self;
}

- (void)update:(NSNotification *)notification {
    if ([[notification object] isKindOfClass:[WeatherData class]]) {
        WeatherData *weatherData = [notification object];
        double temp = weatherData.temperature;
        
        self.tempSum += temp;
        self.numReading++;
        
        if (temp > self.maxTemp) {
            self.maxTemp = temp;
        }
        
        if (temp < self.minTemp) {
            self.minTemp = temp;
        }
        
        [self display];
    }
}

- (void)display {
    NSLog(@"Avg/Max/Min temperature = %.1lf/%1.lf/%.1lf", (self.tempSum / self.numReading), self.maxTemp, self.minTemp);
}

@end
