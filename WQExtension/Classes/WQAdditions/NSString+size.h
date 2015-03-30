//
//  NSString+size.h
//  Leroad
//
//  Created by wuchuanyu on 15/2/12.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (size)

-(CGFloat)heightWithFont:(UIFont*)font width:(CGFloat)width;
-(CGSize)sizeWithFont:(UIFont*)font size:(CGSize)size;

@end
