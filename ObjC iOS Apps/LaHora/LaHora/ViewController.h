//
//  ViewController.h
//  LaHora
//
//  Created by Héctor Gonzalo Andrés on 29/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UILabel *pantalla;
@property (readwrite, nonatomic) NSTimer *temporizador;
@property (readwrite, copy) NSDateFormatter *df;

@end
