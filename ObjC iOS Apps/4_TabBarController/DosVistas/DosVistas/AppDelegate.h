//
//  AppDelegate.h
//  DosVistas
//
//  Created by Héctor Gonzalo Andrés on 31/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>
//Making AppDelegate know that the first and second view controllers, and model classes exists
@class FirstViewController;
@class SecondViewController;
@class Model;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UITabBarController *tbc;
    //First
    FirstViewController *fvc;
    //Second
    SecondViewController *svc;
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, readwrite) Model *m; //Model

@end

