//
//  NSString+Email.m
//
//  Created by Liam Parker on 6/02/13.
//  Copyright (c) 2013 Karma Imperial. All rights reserved.
//

#import "NSString+Email.h"

@implementation NSString (Email)

- (BOOL)isEmail{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL isValid = [emailTest evaluateWithObject:self];
    return isValid;
}

@end
