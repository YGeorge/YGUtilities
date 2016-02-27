//
// NSMutableArray+YGUtilities.m
// YGUtilities (https://github.com/YGeorge/YGUtilities)
//
// Created by George on 26.02.16.
// Copyright (c) 2015 George Ymydykov
//

#import "NSMutableArray+YGUtilities.h"


@implementation NSMutableArray (YGUtilities)

- (void)removeObjectsWithPredicate:(BOOL (^)(id obj))predicate {
    if (predicate != nil) {
        NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:self.count];
        for (id obj in self) {
            BOOL shouldRemove = predicate(obj);
            if (!shouldRemove) {
                [newArray addObject:obj];
            }
        }
        [self setArray:newArray];
    }
}

@end
