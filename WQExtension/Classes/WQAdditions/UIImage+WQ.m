//
//  UIImage+WQ.m
//  WQExtension
//
//  Created by Jerry on 14/11/22.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

#import "UIImage+WQ.h"

@implementation UIImage (WQ)

+(UIImage*)imageWithColor:(UIColor*)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,
                                   color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

+(UIImage*)resizedImage:(UIImage*)image maxSize:(CGSize)maxSize
{
    UIImage* resImage = image;
    if (image.size.width>maxSize.width || image.size.height>maxSize.height)
    {
        if (image.size.width > image.size.height)
            resImage = [image scaleToSize:CGSizeMake(maxSize.width, maxSize.width*image.size.height/image.size.width)];
        else
            resImage = [image scaleToSize:CGSizeMake(maxSize.height*image.size.width/image.size.height, maxSize.height)];
    }
    return resImage;
}

-(UIImage*)scaleToSize:(CGSize)size
{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    
    // 绘制改变大小的图片
    [self drawInRect:CGRectMake(0 , 0, size.width, size.height)];
    
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    
    // 返回新的改变大小后的图片
    return scaledImage;
}

@end
