//
//  Site.h
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Site : NSObject

@property (readonly, assign) float totalExpenses;
@property (readonly, assign) float totalProfits;
@property (readonly,assign) NSString * nameOfSite;
@property (readonly, copy) NSMutableArray * expenses;
@property (readonly, copy) NSMutableArray * profits;

-(instancetype)initWithName:(NSString*)siteName;
-(void)importData;
-(void)calculateTotals;


@end
