//
//  SecondViewController.m
//  DosVistas
//
//  Created by Héctor Gonzalo Andrés on 31/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "Model.h"
#import "AppDelegate.h"

@interface SecondViewController ()


@end

@implementation SecondViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        //Custom initialization
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Results"];
        UIImage *image = [[UIImage imageNamed:@"2small.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [tbi setImage:image];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
