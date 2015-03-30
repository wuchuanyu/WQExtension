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
        return [(NSArray*)self noNullValueAtIndex:index];
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
        return [(NSDictionary*)self noNullValueForKey:aKey];
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


#pragma mark NSString
@implementation NSString (WQ)

- (BOOL)isEmail
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL isValid = [emailTest evaluateWithObject:self];
    return isValid;
}

@end


#pragma mark NSArray
@implementation NSArray (WQ)

-(id)noNullValueAtIndex:(NSUInteger)index
{
    if ([self count] <= index)
        return nil;
    id object = [self objectAtIndex:index];
    if ([object isKindOfClass:[NSNull class]])
        return nil;
    return object;
}

@end


#pragma mark NSDictionary
@implementation NSDictionary (WQ)

-(id)noNullValueForKey:(id)key
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNull class]])
        return nil;
    return object;
}

-(NSString*)intStringForKey:(id)key
{
    NSString* str = [NSString stringWithFormat:@"%d", [[self objectForKey:key] intValue]];
    return str;
}

-(int)intForKey:(id)key
{
    return [[self objectForKey:key] intValue];
}

@end


#pragma mark
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

