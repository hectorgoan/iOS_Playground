//
//  AppDelegate.h
//  LaHora
//
//  Created by Héctor Gonzalo Andrés on 29/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;  //Hacemos que AppDelegate conozca la existencia de la clase ViewController

@interface AppDelegate : UIResponder <UIApplicationDelegate>

//Properties
@property (strong, nonatomic) UIWindow *window; //Esta ya estaba
@property (strong, nonatomic) ViewController *viewController;   //Esta indica a AppDelegate que tendrá una instancia de ViewController entre sus properties

@end

