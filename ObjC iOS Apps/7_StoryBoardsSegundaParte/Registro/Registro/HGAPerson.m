//
//  Person.m
//  Registro
//
//  Created by Héctor Gonzalo Andrés on 2/1/16.
//  Copyright (c) 2016 Héctor Gonzalo Andrés. All rights reserved.
//

#import "HGAPerson.h"

@implementation HGAPerson

-(instancetype) initWithName:(NSString *)n surname:(NSString *)s job: (NSString *)j age: (NSUInteger)a andSalary: (float)sal
{
    self = [super init];
    if (self)
    {
        self.name = n;
        self.surname = s;
        self.job = j;
        self.salary = sal;
        self.age = a;
    }
    return self;
    
}
- (instancetype)init
{

    return [self initWithName:@"Unknown" surname:@"Unknown" job:@"Unknown" age:-1 andSalary:-1.0];
}
@end
