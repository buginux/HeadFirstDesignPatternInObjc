//
//  ForecastDisplay.m
//  ObserverPatternWithNotification
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "ForecastDisplay.h"
#import "WeatherData.h"

@interface ForecastDisplay ()

@property (nonatomic, assign) double currentPressure;
@property (nonatomic, assign) double lastPressure;

@end

@implementation ForecastDisplay

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (instancetype)init {
    if (self = [super init]) {
        _currentPressure = 29.92f;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(update:) name:@"WeatherDataMeasurementsChangedNotification" object:nil];
    }
    return self;
}

- (void)update:(NSNotification *)notification {
    if ([[notification object] isKindOfClass:[WeatherData class]]) {
        WeatherData *weatherData = [notification object];
        
        self.lastPressure = self.currentPressure;
        self.currentPressure = weatherData.pressure;
        
        [self display];
    }
}

- (void)display {
    NSMutableString *message = [NSMutableString stringWithString:@"Forecast: "];
    if (self.currentPressure > self.lastPressure) {
        [message appendString:@"Improving weather on the way!"];
    } else if (self.currentPressure - self.lastPressure < DBL_EPSILON) {
        [message appendString:@"More of the same"];
    } else if (self.currentPressure < self.lastPressure) {
        [message appendString:@"Watch out for cooler, rainy weather"];
    }
    NSLog(@"%@", message);
}

@end
