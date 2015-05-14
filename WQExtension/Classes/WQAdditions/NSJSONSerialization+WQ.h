//
//  NSJSONSerialization+WQ.h
//  WQExtension
//
//  Created by wuchuanyu on 15/5/14.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 * The domain for NSErrors generated by the NSJSONSerialization+UAAdditions methods.
 */
extern NSString * const UAJSONSerializationErrorDomain;

NS_ENUM(NSInteger, UAJSONSerializationErrorCode) {
    UAJSONSerializationErrorCodeInvalidObject
};


@interface NSJSONSerialization (WQ)
/**
 * Converts a Foundation object to a JSON formatted NSString
 * @param jsonObject Foundation object to convert
 * @return NSString formatted as JSON, or nil if an error occurs
 * @note Writing JSON strings with this method defaults to no NSJSONWritingOptions, and does not accept fragments.
 */
+ (NSString *)stringWithObject:(id)jsonObject;

/**
 * Converts a Foundation object to a JSON formatted NSString
 * @param jsonObject Foundation object to convert
 * @param error An NSError pointer for storing errors, if applicable.
 * @return NSString formatted as JSON, or nil if an error occurs
 * @note Writing JSON strings with this method defaults to no NSJSONWritingOptions, and does not accept fragments.
 */
+ (NSString *)stringWithObject:(id)jsonObject error:(NSError **)error;

/**
 * Converts a Foundation object to a JSON formatted NSString
 * @param jsonObject Foundation object to convert
 * @param acceptingFragments `YES` if objects representing JSON value fragments are acceptable, `NO` otherwise.
 * @return NSString formatted as JSON, or nil if an error occurs.
 * @note Writing JSON strings with this method defaults to no NSJSONWritingOptions.
 */
+ (NSString *)stringWithObject:(id)jsonObject acceptingFragments:(BOOL)acceptingFragments;

/**
 * Converts a Foundation object to a JSON formatted NSString
 * @param jsonObject Foundation object to convert
 * @param acceptingFragments `YES` if objects representing JSON value fragments are acceptable, `NO` otherwise.
 * @param error An NSError pointer for storing errors, if applicable.
 * @return NSString formatted as JSON, or nil if an error occurs.
 * @note Writing JSON strings with this method defaults to no NSJSONWritingOptions.
 */
+ (NSString *)stringWithObject:(id)jsonObject acceptingFragments:(BOOL)acceptingFragments error:(NSError **)error;

/**
 * Converts a Foundation object to a JSON formatted NSString
 * @param jsonObject Foundation object to convert
 * @param opt NSJSONWritingOptions options
 * @return NSString formatted as JSON, or nil if an error occurs
 */
+ (NSString *)stringWithObject:(id)jsonObject options:(NSJSONWritingOptions)opt;

/**
 * Converts a Foundation object to a JSON formatted NSString
 * @param jsonObject Foundation object to convert
 * @param opt NSJSONWritingOptions options
 * @param error An NSError pointer for storing errors, if applicable.
 * @return NSString formatted as JSON, or nil if an error occurs
 */
+ (NSString *)stringWithObject:(id)jsonObject options:(NSJSONWritingOptions)opt error:(NSError **)error;


/**
 * Create a Foundation object from JSON string
 * @param jsonString the JSON NSString to convert
 * @return A Foundation object, or nil if an error occurs.
 * @note Creating objects with this method defaults to NSJSONReadingMutableContainers options.
 */
+ (id)objectWithString:(NSString *)jsonString;

/**
 * Create a Foundation object from JSON string
 * @param jsonString the JSON NSString to convert
 * @param opt NSJSONReadingOptions
 * @return A Foundation object, or nil if an error occurs.
 */
+ (id)objectWithString:(NSString *)jsonString options:(NSJSONReadingOptions)opt;

/**
 * Create a Foundation object from JSON string
 * @param jsonString the JSON NSString to convert
 * @param opt NSJSONReadingOptions
 * @param error An NSError pointer for storing errors, if applicable.
 * @return A Foundation object, or nil if an error occurs.
 */
+ (id)objectWithString:(NSString *)jsonString options:(NSJSONReadingOptions)opt error:(NSError **)error;

/**
 * Create a Foundation object from JSON data
 * @param data the JSON data to convert
 * @return A Foundation object, or nil if an error occurs.
 * @note Creating objects with this method defaults to NSJSONReadingMutableContainers options.
 */
+ (id)JSONObjectWithData:(NSData *)data;

/**
 * Create a Foundation object from JSON data
 * @param data the JSON data to convert
 * @param opt NSJSONReadingOptions
 * @return A Foundation object, or nil if an error occurs.
 */
+ (id)JSONObjectWithData:(NSData *)data options:(NSJSONReadingOptions)opt;

@end


@interface NSObject (NSJSONSerialization)

-(NSString*)jsonString;

@end
