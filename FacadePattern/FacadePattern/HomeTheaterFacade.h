//
//  HomeTheaterFacade.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier, Tuner, DvdPlayer, CdPlayer, Projector, TheaterLights, Screen, PopcornPopper;
@interface HomeTheaterFacade : NSObject

@property (nonatomic, strong) Amplifier *amplifier;
@property (nonatomic, strong) Tuner *tuner;
@property (nonatomic, strong) DvdPlayer *dvdPlayer;
@property (nonatomic, strong) CdPlayer *cdPlayer;
@property (nonatomic, strong) Projector *projector;
@property (nonatomic, strong) TheaterLights *lights;
@property (nonatomic, strong) Screen *screen;
@property (nonatomic, strong) PopcornPopper *popper;

- (void)watchMovie:(NSString *)movie;
- (void)endMovie;

@end
