//
// Created by George on 19/12/2016.
// Copyright (c) 2016 StreamLoan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (YGUtilities)

- (NSString *)writeToDocumentDirectoryWithName:(NSString *)fileName;
- (void)serializeToDictionary:(void (^)(NSMutableDictionary *result))dictionary failure:(void (^)(NSError *))failure;
- (void)serializeToArray:(void (^)(NSArray *result))array failure:(void (^)(NSError *))failure;

@end
