//
//  NSString+size.m
//  Leroad
//
//  Created by wuchuanyu on 15/2/12.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import "NSString+size.h"

@implementation NSString (size)

/**
 *  计算文字高度，有修正
 */
-(CGFloat)heightWithFont:(UIFont*)font width:(CGFloat)width
{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self];
    [attrStr addAttribute:NSFontAttributeName
                    value:font
                    range:NSMakeRange(0, self.length)];
    CGFloat height;
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    CGRect rect = [attrStr boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                        options:options
                                        context:nil];
    height = ceilf(rect.size.height);
    return height+2;  // 加两个像素修正,防止emoji被切掉,防止lable文字被切.
}

/**
 *  计算文字size，无修正
 */
-(CGSize)sizeWithFont:(UIFont*)font size:(CGSize)size
{
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:self];
    [attrStr addAttribute:NSFontAttributeName
                    value:font
                    range:NSMakeRange(0, self.length)];
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    CGRect rect = [attrStr boundingRectWithSize:size
                                        options:options
                                        context:nil];
    return rect.size;
}

@end
