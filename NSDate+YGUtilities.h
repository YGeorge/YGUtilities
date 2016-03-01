//
// NSDate+YGUtilities.h
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
// Created by George on 26.02.16.
// Copyright (c) 2016 George Ymydykov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (YGUtilities)

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day;

+ (NSDate *)dateWithString:(NSString *)date format:(NSString *)format;

- (NSDate *)dateByAddingDays:(NSUInteger)days;

- (NSDate *)offsetYears:(NSInteger)numYears;

- (NSDate *)offsetMonths:(NSInteger)numMonths;

- (NSDate *)offsetDays:(NSInteger)numDays;

- (NSDate *)offsetHours:(NSInteger)numHours;

- (NSDate *)previousDay;

- (NSDate *)nextDay;

- (NSString *)stringWithFormat:(NSString *)format;

- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date;

- (BOOL)isSameDay:(NSDate *)date;

- (BOOL)isToday;

- (BOOL)isEarlierThanDate:(NSDate *)date;

- (BOOL)isLaterThanDate:(NSDate *)date;

- (BOOL)isInFuture;

- (BOOL)isInPast;

@end
