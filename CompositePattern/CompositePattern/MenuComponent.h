//
//  MenuComponent.h
//  CompositePattern
//
//  Created by buginux on 2017/6/1.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuComponent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, assign) double price;
@property (nonatomic, assign, getter=isVegetarian) BOOL vegetarian;

- (void)addMenuComponent:(MenuComponent *)menuComponent;
- (void)removeMenuComponent:(MenuComponent *)menuComponent;
- (MenuComponent *)getChildAtIndex:(NSInteger)index;
- (void)print;

@end
