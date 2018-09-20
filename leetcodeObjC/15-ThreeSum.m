//
//  15-3Sum.m
//  leetcode
//
//  Created by lx on 10/4/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "15-ThreeSum.h"

@implementation Solution15: NSObject
- (NSArray *)threeSum: (NSArray *)nums
{
    NSInteger len = nums.count;
    NSMutableArray* ret = [NSMutableArray array];
    NSArray* sortedNums = [nums sortedArrayUsingSelector:@selector(compare:)];
    
    for(NSInteger i = 0; i< sortedNums.count; i++){
        
        NSInteger sum = 0 - [sortedNums[i] integerValue];
        NSInteger left = i + 1;
        NSInteger right = len - 1;
        while(left < right){
            NSInteger number = [sortedNums[left] integerValue] + [sortedNums[right] integerValue];
            if(sum > number){
                left++;
            }else if(sum < number){
                right--;
            }else{
               
                [ret addObject: @[sortedNums[i], sortedNums[left], sortedNums[right]]];
                
                NSArray *indice = [ret lastObject];
                while(left<right && [sortedNums[left] integerValue]== [indice[1] integerValue]) left++;
                while(left<right && [sortedNums[right] integerValue]== [indice[2] integerValue]) right--;
            }
        }
        while(i+1 < len && [sortedNums[i] integerValue] == [sortedNums[i+1] integerValue]) i++;
    }
    return [ret copy];
}
@end

