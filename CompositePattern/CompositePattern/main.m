//
//  main.m
//  CompositePattern
//
//  Created by buginux on 2017/6/1.
//  Copyright © 2017年 buginux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"
#import "Menu.h"
#import "MenuItem.h"
#import "Waitress.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MenuComponent *pancakeHouseMenu = [[Menu alloc] init];
        pancakeHouseMenu.name = @"PANCAKE HOUSE MENU";
        pancakeHouseMenu.desc = @"Breakfast";
        MenuComponent *dinerMenu = [[Menu alloc] init];
        pancakeHouseMenu.name = @"DINER MENU";
        pancakeHouseMenu.desc = @"Lunch";
        MenuComponent *cafeMenu = [[Menu alloc] init];
        cafeMenu.name = @"CAFE MENU";
        cafeMenu.desc = @"Dinner";
        MenuComponent *dessertMenu = [[Menu alloc] init];
        dessertMenu.name = @"DESSERT MENU";
        dessertMenu.desc = @"Dessert of course!";
        MenuComponent *coffeeMenu = [[Menu alloc] init];
        coffeeMenu.name = @"COFFEE MENU";
        coffeeMenu.desc = @"Stuff to go with your afternoon coffee";
        
        MenuComponent *allMenus = [[Menu alloc] init];
        allMenus.name = @"ALL MENUS";
        allMenus.desc = @"All menus combined";
        
        [allMenus addMenuComponent:pancakeHouseMenu];
        [allMenus addMenuComponent:dinerMenu];
        [allMenus addMenuComponent:cafeMenu];
        
        MenuItem *menuItem = [[MenuItem alloc] init];
        menuItem.name = @"K&B's Pancake Breakfast";
        menuItem.desc = @"Pancakes with scrambled eggs, and toast";
        menuItem.vegetarian = YES;
        menuItem.price = 2.99;
        [pancakeHouseMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Regular Pancake Breakfast";
        menuItem.desc = @"Pancakes with fried eggs, sausage";
        menuItem.vegetarian = NO;
        menuItem.price = 2.99;
        [pancakeHouseMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Blueberry Pancakes";
        menuItem.desc = @"Pancakes made with fresh blueberries, and blueberry syrup";
        menuItem.vegetarian = YES;
        menuItem.price = 3.49;
        [pancakeHouseMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Waffles";
        menuItem.desc = @"Waffles, with your choice of blueberries or strawberries";
        menuItem.vegetarian = YES;
        menuItem.price = 3.59;
        [pancakeHouseMenu addMenuComponent:menuItem];
        
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Vegetarian BLT";
        menuItem.desc = @"(Fakin') Bacon with lettuce & tomato on whole wheat";
        menuItem.vegetarian = YES;
        menuItem.price = 2.99;
        [dinerMenu addMenuComponent:menuItem];
        
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"BLT";
        menuItem.desc = @"Bacon with lettuce & tomato on whole wheat";
        menuItem.vegetarian = false;
        menuItem.price = 2.99;
         [dinerMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Soup of the day";
        menuItem.desc = @"A bowl of the soup of the day, with a side of potato salad";
        menuItem.vegetarian = NO;
        menuItem.price = 3.29;
         [dinerMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Hotdog";
        menuItem.desc = @"A hot dog, with saurkraut, relish, onions, topped with cheese";
        menuItem.vegetarian = NO;
        menuItem.price = 3.05;
         [dinerMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Steamed Veggies and Brown Rice";
        menuItem.desc = @"Steamed vegetables over brown rice";
        menuItem.vegetarian = YES;
        menuItem.price = 3.99;
         [dinerMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Pasta";
        menuItem.desc = @"Spaghetti with Marinara Sauce, and a slice of sourdough bread";
        menuItem.vegetarian = YES;
        menuItem.price = 3.89;
         [dinerMenu addMenuComponent:menuItem];
        
        
         [dinerMenu addMenuComponent:dessertMenu];
        
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Apple Pie";
        menuItem.desc = @"Apple pie with a flakey crust, topped with vanilla icecream";
        menuItem.vegetarian = YES;
        menuItem.price = 1.59;
         [dessertMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Cheesecake";
        menuItem.desc = @"Creamy New York cheesecake, with a chocolate graham crust";
        menuItem.vegetarian = YES;
        menuItem.price = 1.99;
        
         [dessertMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Sorbet";
        menuItem.desc = @"A scoop of raspberry and a scoop of lime";
        menuItem.vegetarian = YES;
        menuItem.price = 1.89;
         [dessertMenu addMenuComponent:menuItem];
        
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Veggie Burger and Air Fries";
        menuItem.desc = @"Veggie burger on a whole wheat bun, lettuce, tomato, and fries";
        menuItem.vegetarian = YES;
        menuItem.price = 3.99;
         [cafeMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Soup of the day";
        menuItem.desc = @"A cup of the soup of the day, with a side salad";
        menuItem.vegetarian = NO;
        menuItem.price = 3.69;
         [cafeMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Burrito";
        menuItem.desc = @"A large burrito, with whole pinto beans, salsa, guacamole";
        menuItem.vegetarian = YES;
        menuItem.price = 4.29;
         [cafeMenu addMenuComponent:menuItem];
        
         [cafeMenu addMenuComponent:coffeeMenu];
        
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Coffee Cake";
        menuItem.desc = @"Crumbly cake topped with cinnamon and walnuts";
        menuItem.vegetarian = YES;
        menuItem.price = 1.59;
         [coffeeMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Bagel";
        menuItem.desc = @"Flavors include sesame, poppyseed, cinnamon raisin, pumpkin";
        menuItem.vegetarian = NO;
        menuItem.price = 0.69;
         [coffeeMenu addMenuComponent:menuItem];
         
        menuItem = [[MenuItem alloc] init];
        menuItem.name = @"Biscotti";
        menuItem.desc = @"Three almond or hazelnut biscotti cookies";
        menuItem.vegetarian = YES;
        menuItem.price = 0.89;
         [coffeeMenu addMenuComponent:menuItem];
         
         Waitress *waitress = [[Waitress alloc] initWithMenus:allMenus];
         [waitress printMenu];
    }
    return 0;
}
