//
//  UtilityAdditions.m
//  WQExtension
//
//  Created by Jerry on 13-5-27.
//  Copyright (c) 2013年 Jerry. All rights reserved.
//

#import "UtilityAdditions.h"

#pragma mark NSObject
@implementation NSObject(WQ)

-(BOOL)isDictionary
{
    return [self isKindOfClass:[NSDictionary class]];
}

-(BOOL)isMutableDictionary
{
    return [self isKindOfClass:[NSMutableDictionary class]];
}

-(BOOL)isArray
{
    return [self isKindOfClass:[NSArray class]];
}

-(BOOL)isMutableArray
{
    return [self isKindOfClass:[NSMutableArray class]];
}

-(BOOL)isString
{
    return [self isKindOfClass:[NSString class]];
}

-(BOOL)isMutableString
{
    return [self isKindOfClass:[NSMutableString class]];
}

-(BOOL)isNumber
{
    return [self isKindOfClass:[NSNumber class]];
}

-(BOOL)isNull
{
    return [self isKindOfClass:[NSNull class]];
}

-(int)myIntValue
{
    if ([self isString])
        return [(NSString*)self intValue];
    else if ([self isNumber])
        return [(NSNumber*)self intValue];
    return 0;
}

//array
-(id)myObjectAtIndex:(NSUInteger)index
{
    if ([self isArray])
        return [(NSArray*)self objectAtIndex:index];
    return nil;
}

-(void)myAddObject:(id)anObject
{
    if (![self isKindOfClass:[NSMutableArray class]])
    {
        return;
    }
    if (!anObject)
    {
        return;
    }
    [(NSMutableArray*)self addObject:anObject];
}

-(void)myInsertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (![self isKindOfClass:[NSMutableArray class]])
    {
        return;
    }
    if (!anObject)
    {
        return;
    }
    [(NSMutableArray*)self insertObject:anObject atIndex:index];
}

-(void)myReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
    if (![self isKindOfClass:[NSMutableArray class]])
    {
        return;
    }
    if (!anObject)
    {
        return;
    }
    [(NSMutableArray*)self replaceObjectAtIndex:index withObject:anObject];
}

//dictionary
-(id)myObjectForKey:(id)aKey
{
    if ([self isDictionary])
        return [(NSDictionary*)self objectForKey:aKey];
    return nil;
}

-(void)mySetObject:(id)anObject forKey:(id<NSCopying>)aKey;
{
    if (![self isKindOfClass:[NSMutableDictionary class]])
    {
        return;
    }
    if (!anObject)
    {
        return;
    }
    if (!aKey)
    {
        return;
    }
    [(NSMutableDictionary*)self setObject:anObject forKey:aKey];
}

@end



#pragma mark NSUserDefaults
@implementation NSUserDefaults (WQ)

-(void)setObjectAndSync:(id)value forKey:(NSString *)defaultName
{
    if (!value || !defaultName)
        return;
    [self setObject:value forKey:defaultName];
    [self synchronize];
}

-(void)removeObjectForKeyAndSync:(NSString *)defaultName
{
    if (!defaultName)
        return;
    [self removeObjectForKey:defaultName];
    [self synchronize];
}

@end

