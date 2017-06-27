//
//  ViewController.m
//  HolaMundo
//
//  Created by Héctor Gonzalo Andrés on 29/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void) viewDidLoad
{
    //Init
    [super viewDidLoad];
    indiceUsado = 0;
    [salida setText:[self.arrayFrases objectAtIndex:0]];
    [boton setTitle:[self.arrayIdiomas objectAtIndex:0] forState:UIControlStateNormal];
}

-(IBAction)buttonPushed:(id)sender
{
    if (indiceUsado == [self.arrayFrases count]-1)
    {
        indiceUsado = 0;
        
    }else
    {
        indiceUsado = indiceUsado+1;
    }
    [salida setText:[self.arrayFrases objectAtIndex:indiceUsado]];
    [boton setTitle:[self.arrayIdiomas objectAtIndex:indiceUsado] forState:UIControlStateNormal];
    
}
@end
