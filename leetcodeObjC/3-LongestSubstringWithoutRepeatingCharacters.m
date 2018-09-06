//
//  3-LongestSubstringWithoutRepeatingCharacters.m
//  leetcode
//
//  Created by lx on 3/12/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "3-LongestSubstringWithoutRepeatingCharacters.h"

@implementation Solution3: NSObject
- (NSInteger) lengthOfLongestSubstring: (NSString *) s
{
    if(s.length == 0){
        return 0;
    }
    
    NSMutableDictionary<NSString *, NSNumber *> *map = [[NSMutableDictionary alloc]init];
    int start = 0, end = 0, length = 0;
    while(end < s.length) {
        NSString *curKey = [s substringWithRange:NSMakeRange(end, 1)];
        NSNumber *cur = map[curKey];
        if (cur != nil){
            NSString *key = [s substringWithRange:NSMakeRange(start, 1)];
            [map removeObjectForKey: key];
            start ++;
        }else {
            NSNumber *val = [NSNumber numberWithInt:end];
            map[curKey] = val;
            end ++;
            length = MAX(length, end - start);
        }
    }
    
    return length;
}

@end

