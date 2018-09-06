//
//  5-longestPalindromicSubstring.m
//  leetcodeObjC
//
//  Created by lx on 4/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "5-LongestPalindromicSubstring.h"

@implementation Solution5: NSObject
- (NSString*) longestPalindrome: (NSString *) s
{
    int dp[s.length][s.length];
    for (int i = 0; i<s.length; i++)
    {
        for (int j = 0; j<s.length; j++){
            dp[i][j] = 0;
        }

    }
    
    int left = 0, right = 0, len = 0;
    for (int i = 0; i < s.length; ++i) {
        for (int j = 0; j < i; ++j) {
            dp[j][i] = ([s characterAtIndex: i] == [s characterAtIndex: j] && (i - j < 2 || dp[j + 1][i - 1]));
            if (dp[j][i] && len < i - j + 1) {
                len = i - j + 1;
                left = j;
                right = i;
            }
        }
        dp[i][i] = 1;
    }
    
    return [s substringWithRange: NSMakeRange(left, right - left + 1)];
}

@end
