//
//  Pizza.h
//  AbstractFactory
//
//  Created by buginux on 2017/5/25.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dough.h"
#import "Sauce.h"
#import "Veggies.h"
#import "Cheese.h"
#import "Pepperoni.h"
#import "Clams.h"

@interface Pizza : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<Dough> dough;
@property (nonatomic, strong) id<Sauce> sauce;
@property (nonatomic, strong) NSArray *veggies;
@property (nonatomic, strong) id<Cheese> cheese;
@property (nonatomic, strong) id<Pepperoni> pepperoni;
@property (nonatomic, strong) id<Clams> clam;

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end
