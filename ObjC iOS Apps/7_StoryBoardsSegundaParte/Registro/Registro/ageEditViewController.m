//
//  ageEditViewController.m
//  Registro
//
//  Created by Héctor Gonzalo Andrés on 2/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import "ageEditViewController.h"
#import "AppDelegate.h"
#import "HGAModel.h"
#import "HGAPerson.h"

@interface ageEditViewController ()
- (IBAction)DonePushed:(id)sender;
@property (nonatomic, readwrite) HGAModel *m;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;


@end

@implementation ageEditViewController

@synthesize m;
@synthesize ageTextField;
@synthesize salida;

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
    del = [[UIApplication sharedApplication] delegate];
    
    HGAPerson *p = del.model.persona;
    NSString *ageString = [NSString stringWithFormat:@"%@",  @(p.age)];
    [ageTextField setText:ageString];
    
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

- (IBAction)DonePushed:(id)sender
{
    NSUInteger ageInt = [ageTextField.text integerValue];
    del.model.persona.age = ageInt;
    
    //We gotta change the title in the original button from here
    [salida setTitle:ageTextField.text forState:UIControlStateNormal];
    
    [self.navigationController popViewControllerAnimated:YES];  //This get us to the main screen again
}
@end
