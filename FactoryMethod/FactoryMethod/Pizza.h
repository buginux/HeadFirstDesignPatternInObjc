//
//  Pizza.h
//  FactoryMethod
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject
 
- (instancetype)init NS_UNAVAILABLE;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *dough;
@property (nonatomic, strong) NSString *sauce;
@property (nonatomic, strong) NSMutableArray *toppings;

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end
