//
// NSMutableArray+YGUtilities.h
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
//
// Created by George on 26.02.16.
// Copyright (c) 2015 George Ymydykov
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (YGUtilities)

- (void)removeObjectsWithPredicate:(BOOL (^)(id obj))predicate;

@end
