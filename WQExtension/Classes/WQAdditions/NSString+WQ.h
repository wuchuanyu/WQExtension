//
//  NSString+WQ.h
//  JieQu
//
//  Created by wuchuanyu on 15/5/14.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Email)

- (BOOL)isEmail;

@end

@interface NSString (size)

-(CGFloat)heightWithFont:(UIFont*)font width:(CGFloat)width;
-(CGSize)sizeWithFont:(UIFont*)font size:(CGSize)size;

@end
