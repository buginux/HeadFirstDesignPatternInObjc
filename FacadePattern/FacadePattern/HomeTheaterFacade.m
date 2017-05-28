//
//  HomeTheaterFacade.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import "HomeTheaterFacade.h"
#import "PopcornPopper.h"
#import "TheaterLights.h"
#import "Screen.h"
#import "Projector.h"
#import "Amplifier.h"
#import "DvdPlayer.h"

@implementation HomeTheaterFacade

- (void)watchMovie:(NSString *)movie {
    NSLog(@"Get ready to watch a movie...");
    [self.popper on];
    [self.popper pop];
    [self.lights dimToLevel:10];
    [self.screen down];
    [self.projector on];
    [self.projector wideScreenMode];
    [self.amplifier on];
    self.amplifier.dvdPlayer = self.dvdPlayer;
    [self.amplifier setSurroundSound];
    [self.amplifier setVolume:5];
    [self.dvdPlayer on];
    [self.dvdPlayer playMovie:movie];
}

- (void)endMovie {
    NSLog(@"Shutting movie theater down...");
    [self.popper off];
    [self.lights on];
    [self.screen up];
    [self.projector off];
    [self.amplifier off];
    [self.dvdPlayer stop];
    [self.dvdPlayer eject];
    [self.dvdPlayer off];
}

@end
