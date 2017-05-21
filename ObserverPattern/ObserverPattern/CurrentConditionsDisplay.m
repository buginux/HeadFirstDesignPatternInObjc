//
//  CurrentConditionsDisplay.m
//  ObserverPattern
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CurrentConditionsDisplay.h"

@interface CurrentConditionsDisplay ()

@property (nonatomic, assign) double temperature;
@property (nonatomic, assign) double humidity;
@property (nonatomic, strong) id<Subject> weatherData;

@end

@implementation CurrentConditionsDisplay

- (instancetype)initWithWeatherData:(id<Subject>)weatherData {
    if (self = [super init]) {
        _weatherData = weatherData;
    }
    return self;
}

- (void)updateWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    
    [self display];
}

- (void)display {
    NSLog(@"Current conditions: %.1lfF degrees and %.1lf%% humidity", self.temperature, self.humidity);
}

@end
