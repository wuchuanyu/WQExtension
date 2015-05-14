//
//  NSDictionary+WQ.h
//  JieQu
//
//  Created by wuchuanyu on 15/5/14.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (WQ)

-(id)noNullValueForKey:(id)key;

@end



/**
 *  SafeAccess
 */
@interface NSDictionary (SafeAccess)
- (BOOL)hasKey:(NSString *)key;

- (NSString*)stringForKey:(id)key;

- (NSNumber*)numberForKey:(id)key;

- (NSArray*)arrayForKey:(id)key;

- (NSDictionary*)dictionaryForKey:(id)key;

- (NSInteger)integerForKey:(id)key;

- (NSUInteger)unsignedIntegerForKey:(id)key;

- (BOOL)boolForKey:(id)key;

- (int16_t)int16ForKey:(id)key;

- (int32_t)int32ForKey:(id)key;

- (int64_t)int64ForKey:(id)key;

- (char)charForKey:(id)key;

- (short)shortForKey:(id)key;

- (float)floatForKey:(id)key;

- (double)doubleForKey:(id)key;

- (long long)longLongForKey:(id)key;

- (unsigned long long)unsignedLongLongForKey:(id)key;

//CG
- (CGFloat)CGFloatForKey:(id)key;

- (CGPoint)pointForKey:(id)key;

- (CGSize)sizeForKey:(id)key;

- (CGRect)rectForKey:(id)key;
@end

#pragma --mark NSMutableDictionary setter

@interface NSMutableDictionary(SafeAccess)

-(void)setObj:(id)i forKey:(NSString*)key;

-(void)setString:(NSString*)i forKey:(NSString*)key;

-(void)setBool:(BOOL)i forKey:(NSString*)key;

-(void)setInt:(int)i forKey:(NSString*)key;

-(void)setInteger:(NSInteger)i forKey:(NSString*)key;

-(void)setUnsignedInteger:(NSUInteger)i forKey:(NSString*)key;

-(void)setCGFloat:(CGFloat)f forKey:(NSString*)key;

-(void)setChar:(char)c forKey:(NSString*)key;

-(void)setFloat:(float)i forKey:(NSString*)key;

-(void)setDouble:(double)i forKey:(NSString*)key;

-(void)setLongLong:(long long)i forKey:(NSString*)key;

-(void)setPoint:(CGPoint)o forKey:(NSString*)key;

-(void)setSize:(CGSize)o forKey:(NSString*)key;

-(void)setRect:(CGRect)o forKey:(NSString*)key;
@end



/**
 *  Merge
 */
@interface NSDictionary (Merge)
+ (NSDictionary *)dictionaryByMerging:(NSDictionary *)dict1 with:(NSDictionary *)dict2;
- (NSDictionary *)dictionaryByMergingWith:(NSDictionary *)dict;
@end