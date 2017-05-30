//
//  MenuItem.h
//  IteratorPattern
//
//  Created by buginux on 2017/5/30.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *introduction;
@property (nonatomic, assign, getter=isVegetarian) BOOL vegetarian;
@property (nonatomic, assign) double price;

@end
