//
//  ViewController.m
//  TextFields
//
//  Created by Héctor Gonzalo Andrés on 30/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "ViewController.h"
#define kOFFSET_FOR_KEYBOARD 90.0

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *surnameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
- (IBAction)addButtonPushed:(id)sender;
- (IBAction)nameEnteringEnded:(id)sender;
- (IBAction)surnameEnteringEnded:(id)sender;
- (IBAction)ageEnteringEnded:(id)sender;
- (IBAction)backgroundPushed:(id)sender;

-(void)mostrarMensaje;

@end

@implementation ViewController

@synthesize nameTextField;
@synthesize surnameTextField;
@synthesize ageTextField;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Tuning numberPad
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    numberToolbar.barStyle = UIBarStyleBlackTranslucent;
    numberToolbar.items = @[[[UIBarButtonItem alloc]initWithTitle:@"Cancelar" style:UIBarButtonItemStylePlain target:self action:@selector(cancelNumberPad)],
                            [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                            [[UIBarButtonItem alloc]initWithTitle:@"Add" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberPad)]];
    [numberToolbar sizeToFit];
    ageTextField.inputAccessoryView = numberToolbar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonPushed:(id)sender
{
    [self mostrarMensaje];
}

- (IBAction)nameEnteringEnded:(id)sender
{
    //Jump to surnameTextField
    
}

- (IBAction)surnameEnteringEnded:(id)sender
{
    //Jump to ageTextField
}

- (IBAction)ageEnteringEnded:(id)sender
{
    //addButtonPushed
}

- (IBAction)backgroundPushed:(id)sender
{
    //Background pushed, hide keyboard
    [self.view endEditing:YES];
    
}


-(void)mostrarMensaje
{

    NSString *mensaje = [NSString stringWithFormat:@"Nombre: %@ \nApellidos: %@\nEdad: %@",[nameTextField text], [surnameTextField text], [ageTextField text]];
    
    UIAlertView *alert;
    
    alert = [[UIAlertView alloc]initWithTitle:@"Registro"
                                      message:mensaje
                                     delegate:nil
                            cancelButtonTitle:@"Ok"
                            otherButtonTitles:nil];
    
    [alert show];
}

//Controlling next button
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == nameTextField)
    {
        [textField resignFirstResponder];
        [surnameTextField becomeFirstResponder];
    } else if (textField == surnameTextField)
    {
        [textField resignFirstResponder];
        [ageTextField becomeFirstResponder];
    }else if (textField == ageTextField)
    {
        NSLog(@"Should add");
    }
    return YES;
}

//Controlling numPad Options
-(void)cancelNumberPad{
    [ageTextField resignFirstResponder];
    ageTextField.text = @"";
}

-(void)doneWithNumberPad
{
    NSString *numberFromTheKeyboard = ageTextField.text;
    [ageTextField resignFirstResponder];
    
    [self mostrarMensaje];
}


//Methods to show elements under the keyboard
-(void)keyboardWillShow {
    // Animate the current view out of the way
    if (self.view.frame.origin.y >= 0)
    {
        [self setViewMovedUp:YES];
    }
    else if (self.view.frame.origin.y < 0)
    {
        [self setViewMovedUp:NO];
    }
}

-(void)keyboardWillHide {
    if (self.view.frame.origin.y >= 0)
    {
        [self setViewMovedUp:YES];
    }
    else if (self.view.frame.origin.y < 0)
    {
        [self setViewMovedUp:NO];
    }
}

/*
-(void)textFieldDidBeginEditing:(UITextField *)sender
{
    if ([sender isEqual:ageTextField])
    {
        //move the main view, so that the keyboard does not hide it.
        if  (self.view.frame.origin.y >= 0)
        {
            [self setViewMovedUp:YES];
        }
    }
}*/



-(void)setViewMovedUp:(BOOL)movedUp
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3]; // if you want to slide up the view
    
    CGRect rect = self.view.frame;
    if (movedUp)
    {
        // 1. move the view's origin up so that the text field that will be hidden come above the keyboard
        // 2. increase the size of the view so that the area behind the keyboard is covered up.
        rect.origin.y -= kOFFSET_FOR_KEYBOARD;
        rect.size.height += kOFFSET_FOR_KEYBOARD;
    }
    else
    {
        // revert back to the normal state.
        rect.origin.y += kOFFSET_FOR_KEYBOARD;
        rect.size.height -= kOFFSET_FOR_KEYBOARD;
    }
    self.view.frame = rect;
    
    [UIView commitAnimations];
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // register for keyboard notifications
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    // unregister for keyboard notifications while not visible.
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
}





@end
