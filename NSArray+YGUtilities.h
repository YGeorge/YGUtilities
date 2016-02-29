//
// NSArray+YGUtilities.h
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
//
// Created by George on 26.02.16.
// Copyright (c) 2015 George Ymydykov
//

#import <Foundation/Foundation.h>

@interface NSArray (YGUtilities)

- (void)each:(void (^)(id object))block;

- (void)eachWithIndex:(void (^)(id object, NSUInteger index))block;

- (NSArray *)sortedArrayWithKey:(NSString *)key ascending:(BOOL)ascending;

- (NSArray *)arrayByRemovingObject:(id)object;

- (NSArray *)arrayByRemovingObjectAtIndex:(NSUInteger)index;

- (NSArray *)arrayByRemovingObjectWithPredicate:(BOOL (^)(id obj))predicate;

- (NSArray *)arrayByInsertingObject:(id)object atIndex:(NSUInteger)index;

- (NSArray *)arrayByReplacingObjectAtIndex:(NSUInteger)index withObject:(id)object;

- (NSArray *)arrayByMergingObjectsFromArray:(NSArray *)array;

- (NSArray *)uniqueObjects;

- (NSArray *)reversedArray;

- (NSArray *)shuffledArray;

@end

@interface NSMutableArray (YGUtilities)

- (void)sortWithKey:(NSString *)key ascending:(BOOL)ascending;

- (void)removeObjectsWithPredicate:(BOOL (^)(id obj))predicate;

- (void)mergeObjectsFromArray:(NSArray *)array;

- (void)removeDuplicates;

- (void)reverse;

- (void)shuffle;

@end
