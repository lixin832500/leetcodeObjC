//
//  44-WildcardMatching.m
//  leetcodeObjC
//
//  Created by lx on 8/21/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "44-WildcardMatching.h"

@implementation Solution44 : NSObject
-(BOOL) isMatch: (NSString *)s : (NSString *)p
{
    NSInteger m = s.length, n = p.length;
    BOOL dp[m+1][n+1];
    for(NSInteger i = 0; i < m; i++){
        for(NSInteger j = 0; j < n; j++){
            dp[i][j] = NO;
        }
    }
    dp[0][0] = YES;
    for(NSInteger i = 1; i <= n; ++i){
        if([p characterAtIndex: i-1] == '*'){
            dp[0][i] = dp[0][i-1];
        }
    }
    for(NSInteger i = 1; i <= m; i++){
        for(NSInteger j = 1; j <= n; j++){
            if([p characterAtIndex: j-1] == '*'){
                dp[i][j] = dp[i-1][j] || dp[i][j-1];
            }else{
                dp[i][j] = (([s characterAtIndex: i-1] == [p characterAtIndex: j-1]) || ([p characterAtIndex: j-1] == '?')) && dp[i-1][j-1];
            }
        }
    }
    
    return dp[m][n];
}
@end
