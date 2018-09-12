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
    NSInteger len = [nums count];
    NSMutableArray* ret = [NSMutableArray array];
    NSArray* sortedNums = [nums sortedArrayUsingSelector:@selector(compare:)];
    
    for(NSInteger i = 0; i< [sortedNums count] - 2; i++){
        if(i > 0 && [sortedNums[i-1] intValue]  == [sortedNums[i] intValue]){
            continue;
        }
        
        NSInteger target = 0 - [sortedNums[i] integerValue];
        NSInteger left = i + 1;
        NSInteger right = len - 1;
        while(left < right){
            NSInteger sum = [sortedNums[left] integerValue] + [sortedNums[right] integerValue];
            if(sum > target){
                right --;
            }else if(sum < target){
                left ++;
            }else{
                //NSMutableArray* tmp = [NSMutableArray array];
                
                [ret addObject: @[sortedNums[i], sortedNums[left], sortedNums[right]]];
                left++;
                right--;
                
                //[ret addObject:tmp];
                
                while(left<right && [sortedNums[left-1] integerValue]== [sortedNums[left] integerValue]) left++;
                while(left<right && [sortedNums[right] integerValue]== [sortedNums[right+1] integerValue]) right--;
            }
            
           // while(i+1 < len && [sortedNums[i] integerValue] == [sortedNums[i+1] integerValue]) i++;
        }
    }
    return [ret copy];
}
@end

//int main(int argc, const char *argv[]){
//    
//    @autoreleasepool {
//        
//        NSArray *numArray = @[@5,@9,@-1,@2,@-4,@4];
//        Solution15 *s = [[Solution15 alloc] init];
//        NSArray *ret = [s threeSum:numArray];
////        NSLog(ret);
//        return 0;
//    }
//}

