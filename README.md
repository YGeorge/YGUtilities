YGUtilities
=========

Collection of useful Objective-C Categories

##Foundation Framework

* NSDate
  * + (NSDate *)dateWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day;
  * + (NSDate *)dateWithString:(NSString *)date format:(NSString *)format;
  * - (NSDate *)dateByAddingDays:(NSUInteger)days;
  * - (NSDate *)offsetYears:(NSInteger)numYears;
  * - (NSDate *)offsetMonths:(NSInteger)numMonths;
  * - (NSDate *)offsetDays:(NSInteger)numDays;
  * - (NSDate *)offsetHours:(NSInteger)numHours;
  * - (NSDate *)previousDay;
  * - (NSDate *)nextDay;
  * - (BOOL)isEqualToDateIgnoringTime:(NSDate *)date;
  * - (BOOL)isSameDay:(NSDate *)date;
  * - (BOOL)isToday;
  * - (BOOL)isEarlierThanDate:(NSDate *)date;
  * - (BOOL)isLaterThanDate:(NSDate *)date;
  * - (BOOL)isInFuture;
  * - (BOOL)isInPast;
* NSArray
  * - (void)each:(void (^)(id object))block;
  * - (void)eachWithIndex:(void (^)(id object, NSUInteger index))block;
  * - (NSArray *)sortedArrayWithKey:(NSString *)key ascending:(BOOL)ascending;
  * - (NSArray *)arrayByRemovingObject:(id)object;
  * - (NSArray *)arrayByRemovingObjectAtIndex:(NSUInteger)index;
  * - (NSArray *)arrayByRemovingObjectWithPredicate:(BOOL (^)(id obj))predicate;
  * - (NSArray *)arrayByInsertingObject:(id)object atIndex:(NSUInteger)index;
  * - (NSArray *)arrayByReplacingObjectAtIndex:(NSUInteger)index withObject:(id)object;
  * - (NSArray *)arrayByMergingObjectsFromArray:(NSArray *)array;
  * - (NSArray *)uniqueObjects;
  * - (NSArray *)reversedArray;
  * - (NSArray *)shuffledArray;
* NSMutableArray
  * - (void)sortWithKey:(NSString *)key ascending:(BOOL)ascending;
  * - (void)removeObjectsWithPredicate:(BOOL (^)(id obj))predicate;
  * - (void)mergeObjectsFromArray:(NSArray *)array;
  * - (void)removeDuplicates;
  * - (void)reverse;
  * - (void)shuffle;
