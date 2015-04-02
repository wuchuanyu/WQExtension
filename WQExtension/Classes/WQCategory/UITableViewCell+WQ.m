//
//  UITableViewCell+WQ.m
//  Leroad
//
//  Created by Jerry on 14/12/6.
//  Copyright (c) 2014年 wuchuanyu. All rights reserved.
//

#import "UITableViewCell+WQ.h"

@implementation UITableViewCell (WQ)

-(void)makeSeparateLineAlignLeft
{
    [self makeSeparateLineInset:UIEdgeInsetsZero];
}

-(void)makeSeparateLineInset:(UIEdgeInsets)edgeInsets
{
    if ([self respondsToSelector:@selector(setSeparatorInset:)])
    {
        [self setSeparatorInset:edgeInsets];
    }
    if ([self respondsToSelector:@selector(setLayoutMargins:)])
    {
        [self setLayoutMargins:edgeInsets];
    }
}

@end
