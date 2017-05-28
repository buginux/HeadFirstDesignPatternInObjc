//
//  main.m
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Amplifier.h"
#import "Tuner.h"
#import "DvdPlayer.h"
#import "CdPlayer.h"
#import "Projector.h"
#import "TheaterLights.h"
#import "Screen.h"
#import "PopcornPopper.h"
#import "HomeTheaterFacade.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Amplifier *amp = [[Amplifier alloc] initWithName:@"Top-O-Line Amplifier"];
        Tuner *tuner = [[Tuner alloc] initWithAmplifier:amp name:@"Top-O-Line AM/FM Tuner"];
        DvdPlayer *dvd = [[DvdPlayer alloc] initWithAmplifier:amp name:@"Top-O-Line DVD Player"];
        CdPlayer *cd = [[CdPlayer alloc] initWithAmplifier:amp name:@"Top-O-Line CD Player"];
        Projector *projector = [[Projector alloc] initWithDvdPlayer:dvd name:@"Top-O-Line Projector"];
        TheaterLights *lights = [[TheaterLights alloc] initWithName:@"Theater Ceiling Lights"];
        Screen *screen = [[Screen alloc] initWithName:@"Theater Screen"];
        PopcornPopper *popper = [[PopcornPopper alloc] initWithName:@"Popcorn Popper"];
        HomeTheaterFacade *homeTheater = [[HomeTheaterFacade alloc] init];
        homeTheater.amplifier = amp;
        homeTheater.tuner = tuner;
        homeTheater.dvdPlayer = dvd;
        homeTheater.cdPlayer = cd;
        homeTheater.projector = projector;
        homeTheater.screen = screen;
        homeTheater.lights = lights;
        homeTheater.popper = popper;
        
        [homeTheater watchMovie:@"Raiders of the Lost Ark"];
        [homeTheater endMovie];
    }
    return 0;
}
