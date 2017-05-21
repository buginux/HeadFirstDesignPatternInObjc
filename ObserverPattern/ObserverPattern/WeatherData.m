//
//  WeatherData.m
//  ObserverPattern
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "WeatherData.h"
#import "Observer.h"

@interface WeatherData ()

@property (nonatomic, strong) NSMutableArray<id<Observer>> *observers;
@property (nonatomic, assign) double temperature;
@property (nonatomic, assign) double humidity;
@property (nonatomic, assign) double pressure;

@end

@implementation WeatherData

- (instancetype)init {
    if (self = [super init]) {
        _observers = [NSMutableArray array];
    }
    return self;
}

- (void)registerObserver:(id<Observer>)observer {
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<Observer>)observer {
    [self.observers removeObject:observer];
}

- (void)notifyObservers {
    for (id<Observer> observer in self.observers) {
        [observer updateWithTemp:self.temperature humidity:self.humidity pressure:self.pressure];
    }
}

- (void)measurementsChanged {
    [self notifyObservers];
}

- (void)setMeasurementsWithTemp:(double)temp humidity:(double)humidity pressure:(double)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    self.pressure = pressure;
    
    [self measurementsChanged];
}

@end
