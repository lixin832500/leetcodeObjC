//
//  35-SearchInsertPosition.m
//  leetcodeObjC
//
//  Created by lx on 8/15/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "35-SearchInsertPosition.h"

@implementation Solution35 : NSObject
-(NSInteger) searchInsert: (NSArray*) nums : (NSInteger) target;
{
    if([nums count] == 0) return 0;
    NSInteger low = 0, high = [nums count] - 1;
    NSInteger mid;
    while(low <= high){
        mid = (high + low)/2;
        if([nums[mid] intValue] == target)
            return mid;
        
        if(target < [nums[mid] intValue]){
            high = mid -1;
        }else{
            low = mid + 1;
        }
    }
    
    return low;
}

@end
