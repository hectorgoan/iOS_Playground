//
//  ViewController.m
//  Registro
//
//  Created by Héctor Gonzalo Andrés on 2/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import "GeneralViewController.h"
#import "AppDelegate.h"
#import "HGAPerson.h"
#import "HGAModel.h"
//Importing views for information exchage when seguing
#import "nameEditViewController.h"
#import "surnameEditViewController.h"
#import "jobEditViewController.h"
#import "ageEditViewController.h"
#import "salaryEditViewController.h"

@interface GeneralViewController ()
@property (weak, nonatomic) IBOutlet UIButton *nameButton;
@property (weak, nonatomic) IBOutlet UIButton *surnameButton;
@property (weak, nonatomic) IBOutlet UIButton *jobButton;
@property (weak, nonatomic) IBOutlet UIButton *ageButton;
@property (weak, nonatomic) IBOutlet UIButton *salaryButton;

@end

@implementation GeneralViewController
@synthesize nameButton;
@synthesize surnameButton;
@synthesize jobButton;
@synthesize ageButton;
@synthesize salaryButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //With this we can access our delegate
    AppDelegate * del;
    del = [[UIApplication sharedApplication] delegate];
    
    HGAPerson *p = del.model.persona;
    
    //Initializing buttons titles
    [nameButton setTitle:p.name forState:UIControlStateNormal];
    [surnameButton setTitle:p.surname forState:UIControlStateNormal];
    [jobButton setTitle:p.job forState:UIControlStateNormal];
    NSString *ageString = [NSString stringWithFormat:@"%@",  @(p.age)];
    [ageButton setTitle:ageString forState:UIControlStateNormal];
    NSString *salaryString = [NSString stringWithFormat:@"%f", p.salary];
    [salaryButton setTitle:salaryString forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Passing info to the secondary views
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier]isEqualToString:@"segueToNameEditing"])
    {
        nameEditViewController *nc = [segue destinationViewController];
        
        [nc setSalida:nameButton];
        
    }else if ([[segue identifier]isEqualToString:@"segueToSurnameEditing"])
    {
        surnameEditViewController *sc = [segue destinationViewController];
        
        [sc setSalida:surnameButton];
        
    }else if ([[segue identifier]isEqualToString:@"segueToJobEditing"])
    {
        jobEditViewController *jc = [segue destinationViewController];
        
        [jc setSalida:jobButton];
        
    }else if ([[segue identifier]isEqualToString:@"segueToAgeEditing"])
    {
        ageEditViewController *ac = [segue destinationViewController];
        
        [ac setSalida:ageButton];
        
    }else if ([[segue identifier]isEqualToString:@"segueToSalaryEditing"])
    {
        salaryEditViewController *sc = [segue destinationViewController];
        
        [sc setSalida:salaryButton];
    }
}
@end
