//
//  Person.h
//  Registro
//
//  Created by Héctor Gonzalo Andrés on 2/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HGAPerson : NSObject

//Properties
@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSString *surname;
@property (nonatomic, readwrite) NSString *job;
@property (nonatomic, assign) float salary;
@property (nonatomic, assign) NSUInteger age;

@end
