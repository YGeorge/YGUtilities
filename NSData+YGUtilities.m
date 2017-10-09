//
// Created by George on 19/12/2016.
// Copyright (c) 2016 StreamLoan. All rights reserved.
//

#import "NSData+YGUtilities.h"

@implementation NSData (YGUtilities)

- (NSString *)writeToDocumentDirectoryWithName:(NSString *)fileName {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = paths[0];
    NSString *imagePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    [self writeToFile:imagePath atomically:YES];
    return imagePath;
}

- (void)serializeToDictionary:(void (^)(NSMutableDictionary *dictionary))dictionary failure:(void (^)(NSError *))failure {
    NSError *jsonError;
    NSMutableDictionary *dict = [NSJSONSerialization JSONObjectWithData:self options:NSJSONReadingMutableContainers error:&jsonError];
    if (!jsonError) {
        dictionary(dict);
    } else {
        failure(jsonError);
    }
}

- (void)serializeToArray:(void (^)(NSArray *array))array failure:(void (^)(NSError *))failure {
    NSError *jsonError;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:self options:0 error:&jsonError];
    if (!jsonError) {
        array(jsonArray);
    } else {
        failure(jsonError);
    }
}

@end
