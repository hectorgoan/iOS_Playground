//
//  BalanceRefactorizado.h
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BalanceRefactorizado : NSObject

-(instancetype)initWith:(NSString*)nameOfFolderOnDesktop;
-(void)importDataForAllSites;
-(void)haveSitesCalculateTheirTotals;
-(void)findSiteWithTheMostProfits;
-(void)findSiteWithTheMostExpenses;
-(void)doAnnualBalance;
-(void)printGeneralDataListing;
-(void)printResults;

@end
