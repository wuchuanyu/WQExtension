//
//  NSArray+WQ.m
//  JieQu
//
//  Created by wuchuanyu on 15/5/14.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import "NSArray+WQ.h"

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



/**
 *  SafeAccess
 */
@implementation NSArray (SafeAccess)
-(id)objectWithIndex:(NSUInteger)index{
    if (index <self.count) {
        return self[index];
    }else{
        return nil;
    }
}

- (NSString*)stringWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return @"";
    }
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString*)value;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    }
    
    return nil;
}


- (NSNumber*)numberWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    if ([value isKindOfClass:[NSNumber class]]) {
        return (NSNumber*)value;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterDecimalStyle];
        return [f numberFromString:(NSString*)value];
    }
    return nil;
}

- (NSArray*)arrayWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSArray class]])
    {
        return value;
    }
    return nil;
}


- (NSDictionary*)dictionaryWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]])
    {
        return value;
    }
    return nil;
}

- (NSInteger)integerWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
    {
        return [value integerValue];
    }
    return 0;
}
- (NSUInteger)unsignedIntegerWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
    {
        return [value unsignedIntegerValue];
    }
    return 0;
}
- (BOOL)boolWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return NO;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value boolValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value boolValue];
    }
    return NO;
}
- (int16_t)int16WithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}
- (int32_t)int32WithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}
- (int64_t)int64WithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value longLongValue];
    }
    return 0;
}

- (char)charWithIndex:(NSUInteger)index{
    
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value charValue];
    }
    return 0;
}

- (short)shortWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}
- (float)floatWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value floatValue];
    }
    return 0;
}
- (double)doubleWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value doubleValue];
    }
    return 0;
}
//CG
- (CGFloat)CGFloatWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    CGFloat f = [value doubleValue];
    
    return f;
}

- (CGPoint)pointWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    CGPoint point = CGPointFromString(value);
    
    return point;
}
- (CGSize)sizeWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    CGSize size = CGSizeFromString(value);
    
    return size;
}
- (CGRect)rectWithIndex:(NSUInteger)index
{
    id value = [self objectWithIndex:index];
    
    CGRect rect = CGRectFromString(value);
    
    return rect;
}
@end


#pragma --mark NSMutableArray setter
@implementation NSMutableArray (SafeAccess)
-(void)addObj:(id)i{
    if (i!=nil) {
        [self addObject:i];
    }
}
-(void)addString:(NSString*)i
{
    if (i!=nil) {
        [self addObject:i];
    }
}
-(void)addBool:(BOOL)i
{
    [self addObject:@(i)];
}
-(void)addInt:(int)i
{
    [self addObject:@(i)];
}
-(void)addInteger:(NSInteger)i
{
    [self addObject:@(i)];
}
-(void)addUnsignedInteger:(NSUInteger)i
{
    [self addObject:@(i)];
}
-(void)addCGFloat:(CGFloat)f
{
    [self addObject:@(f)];
}
-(void)addChar:(char)c
{
    [self addObject:@(c)];
}
-(void)addFloat:(float)i
{
    [self addObject:@(i)];
}
-(void)addPoint:(CGPoint)o
{
    [self addObject:NSStringFromCGPoint(o)];
}
-(void)addSize:(CGSize)o
{
    [self addObject:NSStringFromCGSize(o)];
}
-(void)addRect:(CGRect)o
{
    [self addObject:NSStringFromCGRect(o)];
}
@end



/**
 *  Block
 */
@implementation NSArray (Block)
- (void)each:(void (^)(id))block
{
    for (id obj in self) {
        block(obj);
    }
}

- (NSArray *)select:(BOOL (^)(id))block
{
    NSMutableArray *rslt = [NSMutableArray array];
    for (id obj in self) {
        if (block(obj)) {
            [rslt addObject:obj];
        }
    }
    return rslt;
}

- (NSArray *)map:(id (^)(id))block
{
    NSMutableArray *rslt = [NSMutableArray array];
    for (id obj in self) {
        [rslt addObject:block(obj)];
    }
    return rslt;
}

- (id)reduce:(id)initial withBlock:(id (^)(id,id))block
{
    id rslt = initial;
    for (id obj in self) {
        rslt = block(rslt, obj);
    }
    return rslt;
    
}
@end