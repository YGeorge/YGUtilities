//
// NSDate+YGUtilities.h
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
// Created by George on 26.02.16.
// Copyright (c) 2016 George Ymydykov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (YGUtilities)

+ (NSString *)stringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day;

+ (NSDate *)dateWithString:(NSString *)dateStr format:(NSString *)format;

- (NSDate *)dateByAddingDays:(NSUInteger)days;

- (NSDate *)offsetYears:(NSInteger)numYears;

- (NSDate *)offsetMonths:(NSInteger)numMonths;

- (NSDate *)offsetDays:(NSInteger)numDays;

- (NSDate *)offsetHours:(NSInteger)numHours;

- (NSDate *)previousDay;

- (NSDate *)nextDay;

- (BOOL)isEqualToDateIgnoringTime:(NSDate *)aDate;

- (BOOL)isSameDay:(NSDate *)anotherDate;

- (BOOL)isToday;

- (BOOL)isEarlierThanDate:(NSDate *)aDate;

- (BOOL)isLaterThanDate:(NSDate *)aDate;

- (BOOL)isInFuture;

- (BOOL)isInPast;

@end