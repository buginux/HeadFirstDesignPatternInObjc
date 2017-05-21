//
//  HeatIndexDisplay.m
//  ObserverPattern
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "HeatIndexDisplay.h"

@interface HeatIndexDisplay ()

@property (nonatomic, assign) double heatIndex;
@property (nonatomic, strong) id<Subject> weatherData;

@end

@implementation HeatIndexDisplay

- (instancetype)initWithWeatherData:(id<Subject>)weatherData {
    if (self = [super init]) {
        _weatherData = weatherData;
    }
    return self;
}

- (void)updateWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.heatIndex = [self computeHeatIndexWithRH:humidity t:temp];
    
    [self display];
}

- (void)display {
    NSLog(@"Heat index is %.5lf", self.heatIndex);
}

- (double)computeHeatIndexWithRH:(double)rh t:(double)t {
    float index = (float)((16.923 + (0.185212 * t) + (5.37941 * rh) - (0.100254 * t * rh) + (0.00941695 * (t * t)) + (0.00728898 * (rh * rh)) + (0.000345372 * (t * t * rh)) - (0.000814971 * (t * rh * rh)) + (0.0000102102 * (t * t * rh * rh)) - (0.000038646 * (t * t * t)) + (0.0000291583 * (rh * rh * rh)) + (0.00000142721 * (t * t * t * rh)) + (0.000000197483 * (t * rh * rh * rh)) - (0.0000000218429 * (t * t * t * rh * rh)) + 0.000000000843296 * (t * t * rh * rh * rh)) - (0.0000000000481975 * (t * t * t * rh * rh * rh)));
    return index;
}

@end
