//
//  10-RegularExpressionMatching.m
//  leetcodeObjC
//
//  Created by lx on 6/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "10-RegularExpressionMatching.h"

@implementation Solution10: NSObject
- (BOOL) isMatch: (NSString*) s : (NSString*) p{
    NSInteger m = s.length, n = p.length;
    BOOL dp[m+1][n+1];
    dp[0][0] = YES;
    //初始化第0行,除了[0][0]全为false，毋庸置疑，因为空串p只能匹配空串，其他都无能匹配
    for (int i = 1; i <= m; i++)
        dp[i][0] = NO;
    //初始化第0列，只有X*能匹配空串，如果有*，它的真值一定和p[0][j-2]的相同（略过它之前的符号）
    for (int j = 1; j <= n; j++)
        dp[0][j] = j > 1 && '*' == [p characterAtIndex: j-1] && dp[0][j - 2];
    
    for (int i = 1; i <= m; i++)
    {
        for (int j = 1; j <= n; j++)
        {
            if ([p characterAtIndex: j-1]  == '*')
            {
                dp[i][j] = dp[i][j - 2] || ([s characterAtIndex: i-1] == [p characterAtIndex: j-2] || [p characterAtIndex: j-2]  == '.') && dp[i - 1][j];
                
            }
            else   //只有当前字符完全匹配，才有资格传递dp[i-1][j-1] 真值
            {
                dp[i][j] = ([p characterAtIndex: j-1] == '.' || [s characterAtIndex: i-1] == [p characterAtIndex: j-1]) && dp[i - 1][j - 1];
                
            }
        }
    }
    return dp[m][n];
}

@end
