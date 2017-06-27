//
//  HGAModel.h
//  Registro
//
//  Created by Héctor Gonzalo Andrés on 2/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HGAPerson;

@interface HGAModel : NSObject

@property (nonatomic, readwrite) HGAPerson *persona;

-(void)initPersonaWithRandomValues;

@end
