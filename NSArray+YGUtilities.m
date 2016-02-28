//
// NSArray+YGUtilities.m
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
// Created by George on 26.02.16.
// Copyright (c) 2015 George Ymydykov
//

#import "NSArray+YGUtilities.h"

@implementation NSArray (YGUtilities)

- (void)each:(void (^)(id object))block {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        block(obj);
    }];
}

- (void)eachWithIndex:(void (^)(id object, NSUInteger index))block {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        block(obj, idx);
    }];
}

- (NSArray *)sortWithKey:(NSString *)key ascending:(BOOL)ascending {
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:key ascending:ascending];
    return [self sortedArrayUsingDescriptors:[NSArray arrayWithObject:sort]];
}

- (NSArray *)arrayByRemovingObject:(id)object {
    NSMutableArray *copy = [NSMutableArray arrayWithArray:self];
    [copy removeObject:object];
    return [copy copy];
}

- (NSArray *)arrayByRemovingObjectAtIndex:(NSUInteger)index {
    NSMutableArray *copy = [NSMutableArray arrayWithArray:self];
    [copy removeObjectAtIndex:index];
    return [copy copy];
}

- (NSArray *)arrayByRemovingObjectWithPredicate:(BOOL (^)(id obj))predicate {
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:self.count];
    for (id obj in self) {
        BOOL shouldRemove = predicate(obj);
        if (!shouldRemove) {
            [newArray addObject:obj];
        }
    }
    return [newArray copy];
}

- (NSArray *)arrayByInsertingObject:(id)object atIndex:(NSUInteger)index {
    NSMutableArray *copy = [NSMutableArray arrayWithArray:self];
    [copy insertObject:object atIndex:index];
    return [copy copy];
}

- (NSArray *)arrayByReplacingObjectAtIndex:(NSUInteger)index withObject:(id)object {
    NSMutableArray *copy = [NSMutableArray arrayWithArray:self];
    copy[index] = object;
    return [copy copy];
}

- (NSArray *)arrayByMergingObjectsFromArray:(NSArray *)array {
    NSMutableArray *copy = [NSMutableArray arrayWithArray:self];
    NSSet *set = [NSSet setWithArray:copy];
    for (id object in array) {
        if (![set containsObject:object]) [copy addObject:object];
    }
    return [copy copy];
}

- (NSArray *)uniqueObjects {
    return [[NSOrderedSet orderedSetWithArray:self] array];
}

- (NSArray *)reversedArray {
    return [[self reverseObjectEnumerator] allObjects];
}

- (NSArray *)shuffledArray {
    NSMutableArray *copy = [NSMutableArray arrayWithArray:self];
    for (NSInteger i = (NSInteger) [self count] - 1; i > 0; i--) {
        NSUInteger j = (NSUInteger) arc4random_uniform((uint32_t) i + 1);
        [copy exchangeObjectAtIndex:j withObjectAtIndex:(NSUInteger) i];
    }
    return [copy copy];
}

@end
