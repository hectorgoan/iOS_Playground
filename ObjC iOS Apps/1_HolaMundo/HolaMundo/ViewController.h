//
//  ViewController.h
//  HolaMundo
//
//  Created by Héctor Gonzalo Andrés on 29/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *salida;
    IBOutlet UIButton *boton;
    int indiceUsado;
}

@property NSMutableArray *arrayFrases;
@property NSMutableArray *arrayIdiomas;


-(IBAction)buttonPushed:(id)sender;

@end
