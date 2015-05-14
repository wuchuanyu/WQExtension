//
//  NSData+WQ.m
//  JieQu
//
//  Created by wuchuanyu on 15/5/14.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import "NSData+WQ.h"

@implementation NSData (WQ)

-(NSString *)UTF8String{
    return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

@end
