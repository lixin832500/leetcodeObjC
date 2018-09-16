//
//  13-RomanToInteger.m
//  leetcodeObjC
//
//  Created by lx on 6/23/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "13-RomanToInteger.h"

@implementation Solution13 : NSObject
- (NSNumber *)romanToInt : (NSString*) s
{
    NSNumber *res = @(0);
    NSDictionary *map = @{@'I':@(1), @'V':@(5), @'X':@(10), @'L':@(50), @'C':@(100), @'D':@(500), @'M':@(1000)};
    for(int i = 0; i < s.length; i++){
        NSNumber *val = [map objectForKey: @([s characterAtIndex:i])];
        if( i == s.length -1 || ([map objectForKey: @([s characterAtIndex:i+1])] <= [map objectForKey: @([s characterAtIndex:i])]) ){
            res = @([res intValue] + [val intValue]);
        }else{
            res = @([res intValue] - [val intValue]);
        }
    }
    
    return res;
}
@end
