//
//  AppDelegate.m
//  DosVistas
//
//  Created by Héctor Gonzalo Andrés on 31/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "AppDelegate.h"
#import "Model.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize m;
@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Custom App lauch
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //At this point we have a white background
    
        //Let's initialize classes, model and tabbar
    
        //Model first
        m = [[Model alloc]init];
    
        //then First
        fvc = [[FirstViewController alloc]init];
        fvc.entradaTexto.opaque = NO;
        [fvc.entradaTexto setBackgroundColor:[UIColor lightGrayColor]];
    
        //then Second
        svc = [[SecondViewController alloc]init];
    
        //Lets do the tabbar
        NSArray *listOfControllers = @[fvc, svc];   //List of controllers
        tbc = [[UITabBarController alloc]init];
        [tbc setViewControllers:listOfControllers];
    
    //Changes commitment
    [self.window setRootViewController:tbc];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
