//
//  UIView+WQConstraint.m
//  TestLayoutConflict
//
//  Created by Jerry on 15/5/15.
//  Copyright (c) 2015年 wuchuanyu. All rights reserved.
//

#import "UIView+WQConstraint.h"
#import "ConstraintPack.h"

@implementation UIView (WQConstraint)

-(void)removeAllConstraints
{
    RemoveConstraints(self.constraintReferences);
}

@end
