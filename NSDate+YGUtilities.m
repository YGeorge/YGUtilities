//
// NSDate+YGUtilities.m
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
// Created by George on 26.02.16.
// Copyright (c) 2016 George Ymydykov. All rights reserved.
//

#import "NSDate+YGUtilities.h"

@implementation NSDate (YGUtilities)

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setYear:year];
    [components setMonth:month];
    [components setDay:day];
    return [calendar dateFromComponents:components];
}

+ (NSDate *)dateWithString:(NSString *)date format:(NSString *)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSDate *result = [dateFormatter dateFromString:date];
    return result;
}

- (NSDate *)dateByAddingDays:(NSUInteger)days {
    NSDateComponents *c = [[NSDateComponents alloc] init];
    c.day = days;
    return [[NSCalendar currentCalendar] dateByAddingComponents:c toDate:self options:0];
}

- (NSDate *)offsetYears:(NSInteger)numYears {
    if (!self) {
        return nil;
    }
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setYear:numYears];
    return [gregorian dateByAddingComponents:offsetComponents toDate:self options:0];
}

- (NSDate *)offsetMonths:(NSInteger)numMonths {
    if (!self) {
        return nil;
    }
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setMonth:numMonths];
    return [gregorian dateByAddingComponents:offsetComponents toDate:self options:0];
}

- (NSDate *)offsetDays:(NSInteger)numDays {
    if (!self) {
        return nil;
    }
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setDay:numDays];
    return [gregorian dateByAddingComponents:offsetComponents toDate:self options:0];
}

- (NSDate *)offsetHours:(NSInteger)numHours {
    if (!self) {
        return nil;
    }
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setHour:numHours];
    return [gregorian dateByAddingComponents:offsetComponents toDate:self options:0];
}

- (NSDate *)previousDay {
    return [self dateByAddingTimeInterval:-86400];
}

- (NSDate *)nextDay {
    return [self dateByAddingTimeInterval:86400];
}

- (NSString *)stringWithFormat:(NSString *)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSString *result = [dateFormatter stringFromDate:self];
    return result;
}

- (BOOL)isSameDay:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *fromDate = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:self];
    NSDateComponents *fromAnotherDate = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:date];
    return ([fromDate year] == [fromAnotherDate year]
            && [fromDate month] == [fromAnotherDate month]
            && [fromDate day] == [fromAnotherDate day]);
}

- (BOOL)isToday {
    return [self isSameDay:[NSDate date]];
}

- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date {
    NSCalendarUnit components = (NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfYear |
            NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal);
    NSDateComponents *components1 = [[NSCalendar currentCalendar] components:components fromDate:self];
    NSDateComponents *components2 = [[NSCalendar currentCalendar] components:components fromDate:date];
    return ((components1.year == components2.year) &&
            (components1.month == components2.month) &&
            (components1.day == components2.day));
}

- (BOOL)isEarlierThanDate:(NSDate *)date {
    return ([self compare:date] == NSOrderedAscending);
}

- (BOOL)isLaterThanDate:(NSDate *)date {
    return ([self compare:date] == NSOrderedDescending);
}

- (BOOL)isInFuture {
    return ([self isLaterThanDate:[NSDate date]]);
}

- (BOOL)isInPast {
    return ([self isEarlierThanDate:[NSDate date]]);
}

@end
