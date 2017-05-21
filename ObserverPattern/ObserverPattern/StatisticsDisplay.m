//
//  StatisticsDisplay.m
//  ObserverPattern
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "StatisticsDisplay.h"

@interface StatisticsDisplay ()

@property (nonatomic, assign) double maxTemp;
@property (nonatomic, assign) double minTemp;
@property (nonatomic, assign) double tempSum;
@property (nonatomic, assign) NSInteger numReading;
@property (nonatomic, strong) id<Subject> weatherData;

@end

@implementation StatisticsDisplay

- (instancetype)initWithWeatherData:(id<Subject>)weatherData {
    if (self = [super init]) {
        _weatherData = weatherData;
    }
    return self;
}

- (void)updateWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
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

- (void)display {
    NSLog(@"Avg/Max/Min temperature = %.1lf/%1.lf/%.1lf", (self.tempSum / self.numReading), self.maxTemp, self.minTemp);
}

@end
