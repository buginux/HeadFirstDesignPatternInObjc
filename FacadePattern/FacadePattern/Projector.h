//
//  Projector.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DvdPlayer;
@interface Projector : NSObject

- (instancetype)initWithDvdPlayer:(DvdPlayer *)dvdPlayer name:(NSString *)name;

- (void)on;
- (void)off;
- (void)wideScreenMode;
- (void)tvMode;

@end
