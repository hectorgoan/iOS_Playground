//
//  main.m
//  TimesTwo
//
//  Created by Héctor Gonzalo Andrés on 3/10/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //Variable declaration zone
        NSDate *pointerToNSDate = nil;
        NSDate *now = [[NSDate alloc]init]; //*now points to an NSDate object, we can make now to point to other direction
        
        //Program logic
        NSLog(@"The NSDate pointer lives at %p", pointerToNSDate);  //It'll say 0x0, which is where nil lives
        NSLog(@"The seconds NSDate pointer lives at %p", now);      //I'll give an actual heap direction
        
        NSDate *theOriginalNow = now;
        
        
        
        now = [[NSDate alloc] init];
        NSLog(@"\n");
        NSLog(@"Now, the seconds NSDate pointer lives at %p", now);      //I'll give an actual heap direction
        NSLog(@"And, the original still lives at %p", theOriginalNow);       //Idem
        
        theOriginalNow = nil;
        NSLog(@"Now, whe've set the original now to nil, so it lives at %p", theOriginalNow);

        
    }
    return 0;
}
