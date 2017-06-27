//
//  Site.m
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "Site.h"
#import "DIAPaths.h"

@interface Site ()

@property (readonly, copy) NSURL * expensesFile;
@property (readonly, copy) NSURL * profitsFile;
@property (readonly, copy) NSURL * mainSiteFolder;

@end

@implementation Site



-(instancetype)initWithName:(NSString*)siteName  //City Name
{
    self = [super init];
    if (self)
    {
        NSString *tmp = @"datos_economicos/";
        NSString *myFolder = [tmp stringByAppendingString:siteName];
        _mainSiteFolder = [DIAPaths urlToFolderOnDesktop:myFolder];
        _profitsFile = [DIAPaths urlToFile:@"ingresos.txt" inFolderOnDesktop:myFolder];
        _expensesFile = [DIAPaths urlToFile:@"gastos.txt" inFolderOnDesktop:myFolder];
        
        _profits = [[NSMutableArray alloc]init];
        _expenses = [[NSMutableArray alloc] init];
        _nameOfSite = siteName;
        
        //NSLog(@"hola soy %@",siteName);
        
    }    
    return self;
}
-(void)importData
{
    
    //Ingresos
    NSString *contenidoFicheroIngresos = [NSString stringWithContentsOfURL:_profitsFile encoding:NSUTF8StringEncoding error:nil];
    NSArray * contenidoFicheroIngresosLineaALinea = [contenidoFicheroIngresos componentsSeparatedByString:@"\n"];
    if ([contenidoFicheroIngresosLineaALinea count] == 0)
    {
        NSLog(@"El archivo contiene 0 líneas A.K.A. está vacío");
        return;
    }

    for (NSString *unNumeroEnString in contenidoFicheroIngresosLineaALinea)
    {
        float numero = [unNumeroEnString floatValue];
        NSNumber *numeroNS = [NSNumber numberWithFloat:numero];
        //NSLog(@"%@",numeroNS);
        [_profits addObject:numeroNS];
    }
    /*
    if ([_profits count] != 0)
    {
        NSLog(@"Profits imported");
    }
    */

    //Gastos
    NSString *contenidoFicheroGastos = [NSString stringWithContentsOfURL:_expensesFile encoding:NSUTF8StringEncoding error:nil];
    NSArray * contenidoFicheroGastosLineaALinea = [contenidoFicheroGastos componentsSeparatedByString:@"\n"];
    if ([contenidoFicheroGastosLineaALinea count] == 0)
    {
        NSLog(@"El archivo contiene 0 líneas A.K.A. está vacío");
        return;
    }

    for (NSString *unNumeroEnString in contenidoFicheroGastosLineaALinea)
    {
        float numero = [unNumeroEnString floatValue];
        NSNumber *numeroNS = [NSNumber numberWithFloat:numero];
        //NSLog(@"%@",numeroNS);
        [_expenses addObject:numeroNS];
    }
    /*
    if ([_expenses count] != 0)
    {
        NSLog(@"Expenses imported");
    }
    */
}

-(void)calculateTotals
{
    for(NSNumber *unNumero in _profits)
    {
        _totalProfits += [unNumero floatValue];
        
    }
    //NSLog(@"Total beneficios %f", _totalProfits);
    
    for(NSNumber *unNumero in _expenses)
    {
        _totalExpenses += [unNumero floatValue];
        
    }
    //NSLog(@"Total gastos %f", _totalExpenses);
   
    
}

@end
