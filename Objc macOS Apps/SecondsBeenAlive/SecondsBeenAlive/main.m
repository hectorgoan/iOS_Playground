//
//  main.m
//  SecondsBeenAlive
//
//  Created by Héctor Gonzalo Andrés on 3/10/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //Variable declaration section
        
        NSDate *DateNow = [[NSDate alloc]init]; //Here we have current date
        NSDateComponents *dateOfBirthComponents = [[NSDateComponents alloc]init]; //Here we initialize the components of our
        [dateOfBirthComponents setYear:1994];                                       //date of birth
        [dateOfBirthComponents setDay:6];
        [dateOfBirthComponents setMonth:6];
        [dateOfBirthComponents setHour:12];
        [dateOfBirthComponents setMinute:20];
        [dateOfBirthComponents setSecond:0];
        
        //We're going to create the NSDate of our birthday
        NSCalendar *myCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *DateOfBirth = [myCalendar dateFromComponents:dateOfBirthComponents];
        
        
        //Program logic
        double secondsBeingAlive = [DateNow timeIntervalSinceDate:DateOfBirth];
        
        NSLog(@"I've been alive for %f seconds", secondsBeingAlive);
        
        
    }
    return 0;
}
