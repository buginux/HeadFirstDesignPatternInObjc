//
//  CdPlayer.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier;
@interface CdPlayer : NSObject

- (instancetype)initWithAmplifier:(Amplifier *)amplifier name:(NSString *)name;

@end
