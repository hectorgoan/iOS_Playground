//
//  ViewController.m
//  LaHora
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
    self.df = [[NSDateFormatter alloc]init];
    [self.df setTimeStyle:NSDateFormatterMediumStyle];
    [self.df setDateStyle:NSDateFormatterMediumStyle];
    
    NSLocale *ubicacion = [[NSLocale alloc]initWithLocaleIdentifier:@"es_ES"];
    [self.df setLocale:ubicacion];
    self.temporizador = [NSTimer scheduledTimerWithTimeInterval:1   //in seconds
                                                         target:self
                                                       selector:@selector(actualizarLaPantalla:)
                                                       userInfo:nil
                                                        repeats:YES];
    [self.temporizador fire];
}

-(void)actualizarLaPantalla: (NSTimer *)timer
{
    //Este método es el que actualiza el valor del reloj
    NSDate *ahora = [NSDate date];
    NSString *ahoraCadena = [self.df stringFromDate:ahora];
    [self.pantalla setText:ahoraCadena];
}

@end
