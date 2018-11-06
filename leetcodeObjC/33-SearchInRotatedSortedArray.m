//
//  33-SearchInRotatedSortedArray.m
//  leetcodeObjC
//
//  Created by lx on 8/14/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "33-SearchInRotatedSortedArray.h"

@implementation Solution33 : NSObject
-(NSInteger) search:(NSArray *)nums :(NSInteger)target
{
    if([nums count] == 0) return -1;
    
    NSInteger left = 0, right = [nums count] -1;
    while(left <= right){
        NSInteger mid = (left + right) / 2;
        if([nums[mid] intValue] == target) return mid;
        else if([nums[mid] intValue] < [nums[right] intValue]){
            if([nums[mid] intValue] < target && [nums[right] intValue] >= target) left = mid + 1;
            else right = mid - 1;
        } else{
            if([nums[left] intValue] <= target && [nums[mid] intValue] > target) right = mid - 1;
            else left = mid + 1;
        }
    }
    
    return -1;
}
@end


