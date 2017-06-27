//
//  main.m
//  HostNameTeller
//
//  Created by Héctor Gonzalo Andrés on 27/9/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSHost *yo = [NSHost currentHost];
        NSString *salidaGrande = [yo localizedName];
        NSString *salidaCorta = [yo name];
        NSLog(@"\n Mi nombre es %@", yo);
        NSLog(@"\n Aunque también puedes llamarme %@", salidaGrande);
        NSLog(@"\n o también %@", salidaCorta);
    }
    return 0;
}
