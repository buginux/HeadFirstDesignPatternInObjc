//
//  main.m
//  CommandPattern
//
//  Created by buginux on 2017/5/27.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RemoteControl.h"
#import "Light.h"
#import "Stereo.h"
#import "CeilingFan.h"
#import "GarageDoor.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "CeilingFanOnCommand.h"
#import "CeilingFanOffCommand.h"
#import "GarageDoorUpCommand.h"
#import "GarageDoorDownCommand.h"
#import "StereoOnWithCDCommand.h"
#import "StereoOffWithCDCommand.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RemoteControl *remoteControl = [RemoteControl new];
        
        Light *livingRoomLight = [[Light alloc] initWithLocation:@"Living Room"];
        Light *kitchenLight = [[Light alloc] initWithLocation:@"Kitchen"];
        CeilingFan *ceilingFan = [[CeilingFan alloc] initWithLocation:@"Living Room"];
        GarageDoor *garageDoor = [[GarageDoor alloc] initWithLocation:@""];
        Stereo *stereo = [[Stereo alloc] initWithLocation:@"Living Room"];
        
        LightOnCommand *livingRoomLightOn = [[LightOnCommand alloc] initWithLight:livingRoomLight];
        LightOffCommand *livingRoomLightOff = [[LightOffCommand alloc] initWithLight:livingRoomLight];
        LightOnCommand *kitchenLightOn = [[LightOnCommand alloc] initWithLight:kitchenLight];
        LightOffCommand *kitchenLightOff = [[LightOffCommand alloc] initWithLight:kitchenLight];
        
        CeilingFanOnCommand *ceilingFanOn = [[CeilingFanOnCommand alloc] initWithCeilingFan:ceilingFan];
        CeilingFanOffCommand *ceilingFanOff = [[CeilingFanOffCommand alloc] initWithCeilingFan:ceilingFan];
        
        GarageDoorUpCommand *garageDoorUp = [[GarageDoorUpCommand alloc] initWithGarageDoor:garageDoor];
        GarageDoorDownCommand *garageDoorDown = [[GarageDoorDownCommand alloc] initWithGarageDoor:garageDoor];
        
        StereoOnWithCDCommand *stereoOnWithCD = [[StereoOnWithCDCommand alloc] initWithStereo:stereo];
        StereoOffWithCDCommand *stereoOffWithCD = [[StereoOffWithCDCommand alloc] initWithStereo:stereo];
        
        [remoteControl setCommandAtSlot:0 withOnCommand:livingRoomLightOn offCommand:livingRoomLightOff];
        [remoteControl setCommandAtSlot:1 withOnCommand:kitchenLightOn offCommand:kitchenLightOff];
        [remoteControl setCommandAtSlot:2 withOnCommand:ceilingFanOn offCommand:ceilingFanOff];
        [remoteControl setCommandAtSlot:3 withOnCommand:stereoOnWithCD offCommand:stereoOffWithCD];
        [remoteControl setCommandAtSlot:4 withOnCommand:garageDoorUp offCommand:garageDoorDown];
        
        NSLog(@"%@", remoteControl);
        
        [remoteControl pushOnButtonAtSlot:0];
        [remoteControl pushOffButtonAtSlot:0];
        [remoteControl pushOnButtonAtSlot:1];
        [remoteControl pushOffButtonAtSlot:1];
        [remoteControl pushOnButtonAtSlot:2];
        [remoteControl pushOffButtonAtSlot:2];
        [remoteControl pushOnButtonAtSlot:3];
        [remoteControl pushOffButtonAtSlot:3];
        [remoteControl pushOnButtonAtSlot:4];
        [remoteControl pushOffButtonAtSlot:4];
        
    }
    return 0;
}
