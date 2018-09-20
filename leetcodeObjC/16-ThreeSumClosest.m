//
//  16-ThreeSumClosest.m
//  leetcodeObjC
//
//  Created by lx on 6/27/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "16-ThreeSumClosest.h"


@implementation Solution16: NSObject
- (NSInteger)threeSumClost: (NSArray *)nums : (NSInteger) target
{
    NSInteger distance = INT_MAX;
    NSInteger ret = 0;
    
    NSInteger len = nums.count;
    NSArray* sortedNums = [nums sortedArrayUsingSelector:@selector(compare:)];
    
    for(NSInteger i = 0; i< sortedNums.count - 1; i++){
        NSInteger left = i +1;
        NSInteger right = len -1;
        
        while(left < right){
            NSInteger sum = [sortedNums[i] integerValue] + [sortedNums[left] integerValue] + [sortedNums[right] integerValue];
            
            if(sum < target){
                left ++;
                if(target - sum < distance){
                    distance = target - sum;
                    ret = sum;
                }
            }else if(sum > target){
                right --;
                if(sum - target < distance){
                    distance = sum - target;
                    ret = sum;
                }
            }else{
                return  target;
            }
        }
    }
    return ret;
}
@end
