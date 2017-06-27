//
//  AppDelegate.h
//  HolaMundo
//
//  Created by Héctor Gonzalo Andrés on 29/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    //Model
    NSMutableArray *arrayFrases;
    NSMutableArray *arrayLenguajes;
}

//Properties
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;

@end

