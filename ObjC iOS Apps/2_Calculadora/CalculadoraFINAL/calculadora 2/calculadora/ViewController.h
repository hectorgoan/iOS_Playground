//
//  ViewController.h
//  calculadora
//
//  Created by alumno5 on 30/10/15.
//  Copyright (c) 2015 usal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button_ac;
@property (weak, nonatomic) IBOutlet UIButton *button_m;
@property (weak, nonatomic) IBOutlet UIButton *button_mr;

@property (weak, nonatomic) IBOutlet UIButton *button_coma;

//Property que nos sirve para la memoria
@property NSString *memoria;



- (IBAction)pulsa_num:(id)sender;
- (IBAction)operation:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)pulsa_ac:(id)sender;

- (IBAction)pulsa_m:(id)sender;
- (IBAction)pulsa_mr:(id)sender;

@end

