//
//  UITableView+WQ.m
//  Leroad
//
//  Created by Jerry on 14/12/6.
//  Copyright (c) 2014年 wuchuanyu. All rights reserved.
//

#import "UITableView+WQ.h"
#import "AdditionHeader.h"

@implementation UITableView (WQ)

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
