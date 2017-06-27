//
//  DIAPaths.m
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "DIAPaths.h"

@implementation DIAPaths


+(NSURL*)urlToDesktop
{
    //______EN Aula
    //return [NSURL fileURLWithPath:@"/Volumes/ALUMNOS/Alumnos/Descargas"]; //Lo hacemos al directorio descargas por los permisos del aula
    
    //______EN Cualquier otro sitio -.-
    NSString *homePath = [[[NSProcessInfo processInfo] environment] objectForKey:@"HOME"];
    NSString *desktopPath = [homePath stringByAppendingString:@"/Desktop"];
    
    NSURL *urlToReturn = [NSURL fileURLWithPath:desktopPath];
    
    //Only when debugging
    //NSLog([urlToReturn absoluteString]);
    
    
    return urlToReturn;
}

+(NSURL*)urlToDocuments
{
    //______EN Aula
    //return [NSURL fileURLWithPath:@"/Volumes/ALUMNOS/Alumnos/Descargas"]; //Lo hacemos al directorio descargas por los permisos del aula
    
    //______EN Cualquier otro sitio -.-
    NSString *homePath = [[[NSProcessInfo processInfo] environment] objectForKey:@"HOME"];
    NSString *documentsPath = [homePath stringByAppendingString:@"/Documents"];
    
    NSURL *urlToReturn = [NSURL fileURLWithPath:documentsPath];
    
    //Only when debugging
    //NSLog([urlToReturn absoluteString]);
    
    return urlToReturn;
}

+(NSURL*)urlToFolderOnDesktop:(NSString*)nameOfFolderOnDesktop
{
    //______EN Aula
    //NSMutableString *miString = [[NSMutableString alloc]initWithString:@"/Volumes/ALUMNOS/Alumnos/Descargas/"]; //Lo hacemos al directorio descargas por los permisos del aula
    
    //______EN Cualquier otro sitio -.-
    NSString *homePath = [[[NSProcessInfo processInfo] environment] objectForKey:@"HOME"];
    NSString *desktopPath = [homePath stringByAppendingString:@"/Desktop/"];
    
    
    
    NSMutableString *miString = [[NSMutableString alloc]initWithString:desktopPath];
    [miString appendString:nameOfFolderOnDesktop];
    
    
    NSURL *urlToReturn = [NSURL fileURLWithPath:miString];
    
    //Only when debugging
    //NSLog([urlToReturn absoluteString]);
    
    return urlToReturn;
}

+(NSURL*)urlToFileOnDesktop:(NSString*)nameOfFileOnDestkop
{
    //______EN Aula
    //NSMutableString *miString = [[NSMutableString alloc]initWithString:@"/Volumes/ALUMNOS/Alumnos/Descargas/"];
    
    //______EN Cualquier otro sitio -.-
    NSString *homePath = [[[NSProcessInfo processInfo] environment] objectForKey:@"HOME"];
    NSString *desktopPath = [homePath stringByAppendingString:@"/Desktop/"];
    
    NSMutableString *miString = [[NSMutableString alloc]initWithString:desktopPath];
    [miString appendString:nameOfFileOnDestkop];
    
    NSURL *urlToReturn = [NSURL fileURLWithPath:miString];
    
    //Only when debugging
    //NSLog([urlToReturn absoluteString]);
    
    return urlToReturn; //Lo hacemos al directorio descargas por los permisos del aula
}


+(NSURL*)urlToFile:(NSString*)nameOfFile inFolderOnDesktop:(NSString*)nameOfFolderOnDesktop
{
    //______EN Aula
    //NSMutableString *miString = [[NSMutableString alloc]initWithString:@"/Volumes/ALUMNOS/Alumnos/Descargas/"];
    
    //______EN Cualquier otro sitio -.-
    NSString *homePath = [[[NSProcessInfo processInfo] environment] objectForKey:@"HOME"];
    NSString *desktopPath = [homePath stringByAppendingString:@"/Desktop/"];
    NSMutableString *miString = [[NSMutableString alloc]initWithString:desktopPath];
    
    [miString appendString:nameOfFolderOnDesktop];
    [miString appendString:@"/"];
    [miString appendString:nameOfFile];
    
    NSURL *urlToReturn = [NSURL fileURLWithPath:miString];
    
    //Only when debugging
    //NSLog([urlToReturn absoluteString]);
    
    return urlToReturn;
}

+(NSArray*)listingOfDirectoriesInFolderOnDesktop:(NSString*)nameOfFolderOnDesktop
{
    //______EN Aula
    //NSMutableString *miString = [[NSMutableString alloc]initWithString:@"/Volumes/ALUMNOS/Alumnos/Descargas/"];
    
    //______EN Cualquier otro sitio -.-
    NSString *homePath = [[[NSProcessInfo processInfo] environment] objectForKey:@"HOME"];
    NSString *desktopPath = [homePath stringByAppendingString:@"/Desktop/"];
    NSMutableString *miString = [[NSMutableString alloc]initWithString:desktopPath];
    
    [miString appendString:nameOfFolderOnDesktop];
    
    NSFileManager *miManager = [NSFileManager new];
    NSArray *miArray = [miManager contentsOfDirectoryAtPath:miString error:nil];
    
    //Only when debugging
    //NSLog(@"%@", miArray);
    
    return miArray;
}




@end
