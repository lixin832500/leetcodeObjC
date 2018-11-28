//
//  53-MaximumSubarray.m
//  leetcodeObjC
//
//  Created by lx on 9/7/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "53-MaximumSubarray.h"

@implementation Solution53 : NSObject
- (NSInteger) maxSubArray:(NSArray *)nums
{
    if([nums count] == 0) return 0;
    if([nums count] == 1) return [[nums objectAtIndex:0] intValue];
    
    NSInteger currMax = [[nums objectAtIndex:0] intValue], maxValue = [[nums objectAtIndex:0] intValue];
    
    for(NSInteger i = 1; i < [nums count]; i++){
        currMax = MAX([[nums objectAtIndex:i] intValue], currMax + [[nums objectAtIndex:i] intValue]);
        maxValue = MAX(maxValue, currMax);
    }
    
    return maxValue;
}
@end
