//
//  NSDate+convenience.h
//
//  Created by in 't Veen Tjeerd on 4/23/12.
//  Copyright (c) 2012 Vurig Media. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Convenience)

-(NSDate*)gregorianDate;
-(NSDate *)offsetMonth:(int)numMonths;
-(NSDate *)offsetDay:(int)numDays;
-(NSDate *)offsetHours:(int)hours;
-(NSUInteger)numDaysInMonth;
-(NSUInteger)firstWeekDayInMonth;
-(NSInteger)year;
-(NSInteger)month;
-(NSInteger)day;
-(BOOL)sameDay:(NSDate*)otherDate;

+(NSDate *)dateStartOfDay:(NSDate *)date;
+(NSDate *)dateStartOfWeek;
+(NSDate *)dateEndOfWeek;

+(BOOL)earlierDate:(NSDate*)date1 date:(NSDate*)date2;

@end
