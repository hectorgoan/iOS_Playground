//
//  DIAPaths.h
//  Balances
//
//  Created by Héctor Gonzalo Andrés on 13/12/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DIAPaths : NSObject

+(NSURL*)urlToDesktop;
+(NSURL*)urlToDocuments;
+(NSURL*)urlToFolderOnDesktop:(NSString*)nameOfFolderOnDesktop;
+(NSURL*)urlToFileOnDesktop:(NSString*)nameOfFileOnDestkop;
+(NSURL*)urlToFile:(NSString*)nameOfFile inFolderOnDesktop:(NSString*)nameOfFolderOnDesktop;
+(NSArray*)listingOfDirectoriesInFolderOnDesktop:(NSString*)nameOfFolderOnDesktop;

@end
