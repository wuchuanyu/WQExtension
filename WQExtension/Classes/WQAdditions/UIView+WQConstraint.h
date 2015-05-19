//
//  UIView+WQConstraint.h
//  TestLayoutConflict
//
//  Created by Jerry on 15/5/15.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WQConstraint)

/**
 *  删除所有约束
 */
-(void)removeAllConstraints;
/**
 *  删除外部约束
 */
-(void)removeExternalConstraints;
/**
 *  删除内部约束
 */
-(void)removeInternalConstraints;

@end
