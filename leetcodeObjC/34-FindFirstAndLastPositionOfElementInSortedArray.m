//
//  34-FindFirstAndLastPositionOfElementInSortedArray.m
//  leetcodeObjC
//
//  Created by lx on 8/14/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "34-FindFirstAndLastPositionOfElementInSortedArray.h"

@implementation Solution34: NSObject
-(NSArray *) searchRange:(NSArray *) nums : (NSInteger) target
{
    NSMutableArray *ret = [[NSMutableArray alloc] initWithObjects: @-1, @-1, nil];
    NSInteger left = 0, right = [nums count] -1, mid;
    while(left <= right){
        if([nums[left] intValue] == target && [nums[right] intValue] == target){
            [ret replaceObjectAtIndex: 0 withObject: @(left)];
            [ret replaceObjectAtIndex: 1 withObject: @(right)];
            break;
        }
        
        mid = (left + right) / 2;
        if([nums[mid] intValue] < target){
            left = mid + 1;
        }else if([nums[mid] intValue] > target){
            right = mid - 1;
        }else{
            if([nums[right] intValue] == target)
                ++ left;
            else
                -- right;
        }
    }
    
    
    return [ret mutableCopy];
}
@end
