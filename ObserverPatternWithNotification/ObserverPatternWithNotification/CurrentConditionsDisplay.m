//
//  CurrentConditionsDisplay.m
//  ObserverPatternWithNotification
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "CurrentConditionsDisplay.h"
#import "WeatherData.h"

@interface CurrentConditionsDisplay ()

@property (nonatomic, assign) double temperature;
@property (nonatomic, assign) double humidity;

@end

@implementation CurrentConditionsDisplay

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
        self.temperature = weatherData.temperature;
        self.humidity = weatherData.humidity;
        
        [self display];
    }
}

- (void)display {
    NSLog(@"Current conditions: %.1lfF degrees and %.1lf%% humidity", self.temperature, self.humidity);
}

@end
