//
//  Screen.h
//  FacadePattern
//
//  Created by buginux on 2017/5/28.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Screen : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)up;
- (void)down;

@end
