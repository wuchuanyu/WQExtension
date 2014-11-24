//
//  UIImage+WQ.h
//  WQExtension
//
//  Created by Jerry on 14/11/22.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WQ)

/**
 *  创建纯色的图片
 */
+(UIImage*)imageWithColor:(UIColor*)color size:(CGSize)size;
/**
 *  将图片等比缩放到指定尺寸
 */
+(UIImage*)resizedImage:(UIImage*)image maxSize:(CGSize)maxSize;
/**
 *  将图片缩放到指定尺寸
 */
-(UIImage*)scaleToSize:(CGSize)size;

@end
