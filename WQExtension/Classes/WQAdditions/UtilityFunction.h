//
//  UtilityFunction.h
//  WQExtension
//
//  Created by Jerry on 14/11/22.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UtilityFunction : NSObject

/**
 *  Documents路径
 */
+(NSString*)documentsPath;
/**
 *  Library/Caches路径
 */
+(NSString*)cachesPath;
/**
 *  Library/Application Support路径
 */
+(NSString*)applicationSupportPath;
/**
 *  文件夹路径，如果参数传入的文件夹不存在则创建
 */
+(NSString*)directoryPath:(NSString*)path;


/**
 *  创建UUID，带破折号，大写
 */
+(NSString*)createUUID;
/**
 *  创建UUID，无破折号，大写
 */
+(NSString*)createNoDashUUID;
/**
 *  创建UUID，无破折号，大写或小写
 */
+(NSString*)createNoDashUUIDLowercase:(BOOL)lowercase;

@end
