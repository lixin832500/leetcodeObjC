//
//  42-TrappingRainWater.m
//  leetcodeObjC
//
//  Created by lx on 8/20/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "42-TrappingRainWater.h"

@implementation Solution42 : NSObject
-(NSInteger) Trap: (NSArray*) height
{
    NSInteger res = 0, mx = 0, n = [height count];
    int dp[n];
    for(NSInteger i = 0; i< n; ++i){
        dp[i] = 0;
    }
    for(NSInteger i = 0; i< n; ++i){
        dp[i] = (int)mx;
        mx = MAX(mx, [height[i] intValue]);
    }
    mx = 0;
    for(NSInteger i = n -1; i >= 0; --i){
        dp[i] = MIN(dp[i], mx);
        mx = MAX(mx, [height[i] intValue]);
        if(dp[i] > [height[i] intValue]) res += dp[i] - [height[i] intValue];
    }
    
    return res;
}
@end
