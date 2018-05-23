//
//  7-ReverseInteger.m
//  leetcode
//
//  Created by lx on 3/12/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "7-ReverseInteger.h"

@implementation Solution7: NSObject
- (NSInteger) reverse: (NSInteger) x
{
    NSInteger res = 0;
    while (x != 0) {
        if (ABS(res) > INT_MAX / 10) return 0;
        res = res * 10 + x % 10;
        x /= 10;
    }
    return res;
    
}

@end
