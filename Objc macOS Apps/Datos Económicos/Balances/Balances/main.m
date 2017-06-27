//
//  main.m
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BalanceRefactorizado.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BalanceRefactorizado *nuevoBalance = [[BalanceRefactorizado alloc]initWith:@"datos_economicos"];
        if (nuevoBalance == nil)
        {
            NSLog(@"Fuente de datos no disponible");
            exit(-1);
        }
        [nuevoBalance importDataForAllSites];
        [nuevoBalance haveSitesCalculateTheirTotals];
        [nuevoBalance findSiteWithTheMostProfits];
        [nuevoBalance findSiteWithTheMostExpenses];
        [nuevoBalance doAnnualBalance];
        [nuevoBalance printGeneralDataListing];
        [nuevoBalance printResults];
        

        
    }
    return 0;
}
