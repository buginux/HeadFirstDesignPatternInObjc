//
//  StatisticsDisplay.h
//  ObserverPattern
//
//  Created by buginux on 2017/5/21.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "Observer.h"
#import "DisplayElement.h"

@interface StatisticsDisplay : NSObject <Observer, DisplayElement>

- (instancetype)initWithWeatherData:(id<Subject>)weatherData;

@end
