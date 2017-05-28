//
//  Amplifier.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tuner, DvdPlayer, CdPlayer;
@interface Amplifier : NSObject

- (instancetype)initWithName:(NSString *)name;

@property (nonatomic, weak) Tuner *tuner;
@property (nonatomic, weak) DvdPlayer *dvdPlayer;
@property (nonatomic, weak) CdPlayer *cdPlayer;

- (void)on;
- (void)off;
- (void)setStereoSound;
- (void)setSurroundSound;
- (void)setVolume:(NSInteger)level;

@end
