//
//  UtilityAdditions.h
//  WQExtension
//
//  Created by Jerry on 13-5-27.
//  Copyright (c) 2013年 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (WQ)

-(BOOL)isDictionary;
-(BOOL)isMutableDictionary;
-(BOOL)isArray;
-(BOOL)isMutableArray;
-(BOOL)isString;
-(BOOL)isMutableString;
-(BOOL)isNumber;
-(BOOL)isNull;
-(int)myIntValue;
//array
-(id)myObjectAtIndex:(NSUInteger)index;
-(void)myAddObject:(id)anObject;
-(void)myInsertObject:(id)anObject atIndex:(NSUInteger)index;
-(void)myReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
//dictionary
-(id)myObjectForKey:(id)aKey;
-(void)mySetObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end



@interface NSUserDefaults (WQ)

-(void)setObjectAndSync:(id)value forKey:(NSString *)defaultName;
-(void)removeObjectForKeyAndSync:(NSString *)defaultName;

@end
