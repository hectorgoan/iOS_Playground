//
//  FirstViewController.h
//  DosVistas
//
//  Created by Héctor Gonzalo Andrés on 31/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *entradaTexto;
- (IBAction)procesaTexto:(id)sender;
@end
