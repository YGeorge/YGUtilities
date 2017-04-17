//
// NSString+YGUtilities.h
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
// Created by George on 26.02.16.
// Copyright (c) 2016 George Ymydykov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (YGUtilities)

+ (NSString *)stringWithDate:(NSDate *)date format:(NSString *)format;

- (NSString *)reversedString;

- (NSString *)substringFrom:(NSUInteger)from to:(NSUInteger)to;

- (BOOL)containsCharacterSet:(NSCharacterSet *)set;

- (BOOL)containsString:(NSString *)string;

- (BOOL)startsWith:(NSString *)string;

#pragma mark Size

- (CGFloat)heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width;

- (CGFloat)widthWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height;

- (CGSize)sizeWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width;

- (CGSize)sizeWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height;
@end

@interface NSMutableString (YGUtilities)

- (void)trim;

- (void)reverse;

@end
