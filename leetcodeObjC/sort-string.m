//
//  sort-string.m
//  leetcodeObjC
//
//  Created by lx on 8/26/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(Sorting)
-(NSString *)sortStringAlphabetically: (NSString *)my_string;
@end

@implementation NSString(Sorting)
-(NSString *)sortStringAlphabetically: (NSString *)my_string
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < my_string.length; i ++) {
        [array addObject:[NSString stringWithFormat:@"%c", [my_string characterAtIndex:i]]];
    }
    NSMutableArray *my_array= [array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSString * combinedString = [[my_array valueForKey:@"description"] componentsJoinedByString:@""];
    return combinedString;
    
}
@end
