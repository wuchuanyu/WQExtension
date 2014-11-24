//
//  UtilityFunction.m
//  WQExtension
//
//  Created by Jerry on 14/11/22.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

#import "UtilityFunction.h"

@implementation UtilityFunction

+(NSString*)documentsPath
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

+(NSString*)cachesPath
{
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

+(NSString*)applicationSupportPath
{
    return [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES) firstObject];    
}

+(NSString*)directoryPath:(NSString*)path
{
    NSFileManager* fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:path])
    {
        [fileManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return path;
}

#pragma mark UUID
+(NSString*)createUUID
{
    CFUUIDRef uuid_ref = CFUUIDCreate(NULL);
    CFStringRef uuid_string_ref= CFUUIDCreateString(NULL, uuid_ref);
    CFRelease(uuid_ref);
    NSString* uuid = [NSString stringWithString:(__bridge NSString*)uuid_string_ref];
    CFRelease(uuid_string_ref);
    return uuid;
}

+(NSString*)createNoDashUUID
{
    return [[self createUUID] stringByReplacingOccurrencesOfString:@"-" withString:@""];
}

+(NSString*)createNoDashUUIDLowercase:(BOOL)lowercase;
{
    NSString* uuid = [self createNoDashUUID];
    if (lowercase)
        [uuid lowercaseString];
    return uuid;
}

@end
