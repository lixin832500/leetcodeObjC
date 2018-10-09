//
//  18-FourSum.m
//  leetcodeObjC
//
//  Created by lx on 7/2/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "18-FourSum.h"

@implementation Solution18: NSObject
- (NSArray *)fourSum: (NSArray *)nums : (NSInteger) target
{
    NSInteger len = [nums count];
    NSMutableArray* ret = [NSMutableArray array];
    if(nums == nil || len < 4) return [ret copy];
    
    NSArray* sortedNums = [nums sortedArrayUsingSelector:@selector(compare:)];
    
    for(NSInteger i = 0; i< [sortedNums count]; i++){
        for(NSInteger j = i+1; j< [sortedNums count]; j++){
            
            NSInteger left = j + 1;
            NSInteger right = len - 1;
            while(left < right){
                NSInteger sum = [sortedNums[i] integerValue] + [sortedNums[j] integerValue] +  [sortedNums[left] integerValue] + [sortedNums[right] integerValue];
                if(sum < target){
                    left++;
                }else if(sum > target){
                    right--;
                }else{
                    
                    [ret addObject: @[sortedNums[i], sortedNums[j], sortedNums[left], sortedNums[right]]];
                    
                    NSArray *indice = [ret lastObject];
                    while(left<right && [sortedNums[left] integerValue]== [indice[2] integerValue]) left++;
                    while(left<right && [sortedNums[right] integerValue]== [indice[3] integerValue]) right--;
                }
            }
            while(j+1 < len && [sortedNums[j] integerValue] == [sortedNums[j+1] integerValue]) j++;
        }
        while(i+1 < len && [sortedNums[i] integerValue] == [sortedNums[i+1] integerValue]) i++;
    }
    return [ret copy];
}
@end
