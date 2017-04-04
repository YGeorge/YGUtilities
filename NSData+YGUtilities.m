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

@end