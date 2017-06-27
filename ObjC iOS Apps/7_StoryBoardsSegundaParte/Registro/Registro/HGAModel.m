//
//  HGAModel.m
//  Registro
//
//  Created by Héctor Gonzalo Andrés on 2/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import "HGAModel.h"
#include "HGAPerson.h"

@implementation HGAModel
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.persona = [[HGAPerson alloc]init];
        [self initPersonaWithRandomValues];
    }
    return self;
}

-(void)initPersonaWithRandomValues
{
    //Arrays of records to use to "randomize" the values
    NSArray * names = @[@"James", @"Austin", @"Mata"];
    NSArray * surnames = @[@"Bond", @"Power", @"Hari", @"Fernández", @"López"];
    NSArray * jobs = @[@"Agent", @"Spy", @"Double agent", @"Street sweeper"];
    NSArray * salaries = @[@(100000), @(200000), @(30000)];

    
    self.persona.name = names[arc4random_uniform((uint32_t)(names.count))];
    self.persona.surname = surnames[arc4random_uniform((uint32_t)(surnames.count))];
    self.persona.job = jobs[arc4random_uniform((uint32_t)(jobs.count))];
    self.persona.salary = ((NSNumber*)salaries[arc4random_uniform((uint32_t)(salaries.count))]).floatValue;
    self.persona.age = 18;  //Me daba pereza hacer random
    
}


@end
