//
//  11-ContainerWithMostWater.m
//  leetcode
//
//  Created by lx on 9/29/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "11-ContainerWithMostWater.h"

@implementation Solution11: NSObject
- (NSNumber *)maxArea:(NSArray *)height
{
    // use a hash to save searching time
    NSNumber *area = @0;
    NSInteger i = 0;
    NSInteger j = [height count] - 1;
    
    while(i < j){
        NSNumber *value1 = [height objectAtIndex:i];
        NSNumber *value2 = [height objectAtIndex:j];
        NSNumber *tmp = value1 < value2 ? value1:value2;
        NSNumber *tmpArea = [NSNumber numberWithLong:[tmp integerValue]*(j - i)];
        
        area = area > tmpArea ? area : tmpArea;
        if([height objectAtIndex:i] < [height objectAtIndex:j]){
            i++;
        }else{
            j--;
        }
    }
    
    return area;
}
@end

