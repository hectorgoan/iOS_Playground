//
//  BalanceRefactorizado.m
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "BalanceRefactorizado.h"
#import "DIAPaths.h"
#import "Site.h"

@implementation BalanceRefactorizado

NSArray *ciudades;
NSMutableArray *sitios;
Site *higherProfitter;
Site *higherExpenser;
float higherProfit;
float higherExpense;
float totalBalance;

- (instancetype)initWith:(NSString*)nameOfFolderOnDesktop
{
    self = [super init];
    if (self)
    {
        IFPrint(@" -----------------------");
        IFPrint(@"| Bienvenido a Balances |");
        IFPrint(@" -----------------------\n\n" );
        //IFPrint(@"Soy el motor de la app");
        ciudades = [DIAPaths listingOfDirectoriesInFolderOnDesktop:@"datos_economicos"];
        if (ciudades == nil)
        {
            return nil;
        }
        //IFPrint(@"Tengo que hacer los balances de %@", ciudades);
    }
    return self;
}
-(void)importDataForAllSites
{
    sitios = [[NSMutableArray alloc]init];
    for (NSString *unString in ciudades)    //With this bucle we're filling up sitios and importing the  data
    {
        Site *nuevositio = [[Site alloc]initWithName:unString];
        [nuevositio importData];
        [sitios addObject:nuevositio];
    }

}
-(void)haveSitesCalculateTheirTotals
{
    for (Site *unSitio in sitios)   //With this bucle we're calculating totals
    {
        [unSitio calculateTotals];
    }

}
-(void)findSiteWithTheMostProfits
{
    
    higherProfit = 0;
    for (Site *unSitio in sitios)   //With this bucle we're calculating the higher profits
    {
        if ([unSitio totalProfits] > higherProfit)
        {
            higherProfitter = unSitio;
            higherProfit = [unSitio totalProfits];
        }
    }
}
-(void)findSiteWithTheMostExpenses
{
    
    higherExpense = 0;
    for (Site *unSitio in sitios)   //With this bucle we're calculating the higher expenses
    {
        if ([unSitio totalExpenses] > higherExpense)
        {
            higherExpenser = unSitio;
            higherExpense = [unSitio totalExpenses];
        }
    }
}
-(void)doAnnualBalance
{
    totalBalance = 0;
    
    for (Site *unSitio in sitios)   //With this bucle we're calculating the annual balance
    {
        float balanceParcial = [unSitio totalProfits] - [unSitio totalExpenses];
        totalBalance = totalBalance + balanceParcial;
    }
    
    //NSLog(@"balance %f",totalBalance);
    
}
-(void)printGeneralDataListing
{
    
    for (Site *unSitio in sitios)
    {
        NSString *tmp = @"Desktop/";
        
        NSString *pathToMyFolder = [tmp stringByAppendingString:[unSitio nameOfSite]];
        NSURL *urlProfits = [DIAPaths urlToFile:@"ingresos.txt" inFolderOnDesktop:pathToMyFolder];
        NSURL *urlExpenses = [DIAPaths urlToFile:@"gastos.txt" inFolderOnDesktop:pathToMyFolder];
        
        IFPrint(@"Localidad: %@ \n", [unSitio nameOfSite]);
        IFPrint(@"Profits located at %@ \n", [urlProfits absoluteString]);
        IFPrint(@"Expenses located at %@ \n\n", [urlExpenses absoluteString]);
        
    }
    IFPrint(@"+---------------------+---------------------+---------------------+\n\n\n");
    
    
    for (Site *unSitio in sitios)
    {
        
        IFPrint(@"Localidad: %@ \n\n", [unSitio nameOfSite]);
        IFPrint(@"Ingresos      Gastos \n");
        IFPrint(@"--------      ------ \n");
        for (int i = 0; i < [[unSitio profits]count]-1; i++)
        {
            IFPrint(@"   %@             %@ \n", [[unSitio profits]objectAtIndex:i], [[unSitio expenses]objectAtIndex:i]);
        }
        IFPrint(@"--------      ------ \n");
        IFPrint(@"   %.f            %.f \n", [unSitio totalProfits], [unSitio totalExpenses]);


        
        IFPrint(@"\n\n\n");
    }
    
    IFPrint(@"+---------------------+---------------------+---------------------+\n\n");

    
}
-(void)printResults
{
    IFPrint(@"The most expensive site is %@ : %.2f € \n", [higherExpenser nameOfSite], [higherExpenser totalExpenses]);
    IFPrint(@"The most profitter site is %@ : %.2f € \n", [higherProfitter nameOfSite], [higherProfitter totalProfits]);
    IFPrint(@"Yearly outcome is : %.2f €\n", totalBalance);
    
    if (totalBalance > 0)
    {
        NSString *str = @"Total balance was > 0 \U0001F601";
        NSData *data = [str dataUsingEncoding:NSNonLossyASCIIStringEncoding];
        NSString *valueUnicode = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        
        NSData *dataa = [valueUnicode dataUsingEncoding:NSUTF8StringEncoding];
        NSString *valueEmoj = [[NSString alloc] initWithData:dataa encoding:NSNonLossyASCIIStringEncoding];
        
        IFPrint(@"%@ \n", valueEmoj);
    }else
    {
        NSString *str = @"Total balance was < 0 \U0001F629";
        NSData *data = [str dataUsingEncoding:NSNonLossyASCIIStringEncoding];
        NSString *valueUnicode = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        
        NSData *dataa = [valueUnicode dataUsingEncoding:NSUTF8StringEncoding];
        NSString *valueEmoj = [[NSString alloc] initWithData:dataa encoding:NSNonLossyASCIIStringEncoding];
        
        IFPrint(@"%@ \n", valueEmoj);
    }
    
    
    
    
}

void IFPrint (NSString *format, ...)
{
    va_list args;
    va_start(args, format);
    
    fputs([[[NSString alloc] initWithFormat:format arguments:args] UTF8String], stdout);
    
    va_end(args);
}
@end
