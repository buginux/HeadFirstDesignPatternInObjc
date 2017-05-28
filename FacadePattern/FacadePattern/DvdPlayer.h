//
//  DvdPlayer.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier;
@interface DvdPlayer : NSObject

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name;

- (void)on;
- (void)off;
- (void)eject;
- (void)playMovie:(NSString *)movie;
- (void)playTrack:(NSInteger)track;
- (void)stop;
- (void)pause;
- (void)setTwoChannelAudio;
- (void)setSurroundAudio;
- (NSString *)description;

@end
