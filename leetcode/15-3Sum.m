//
//  15-3Sum.m
//  leetcode
//
//  Created by lx on 10/4/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "15-3Sum.h"

@implementation Solution15: NSObject
- (NSArray *)threeSum: (NSArray *)nums
{
    NSInteger len = nums.count;
    NSMutableArray* ret = [[NSMutableArray alloc] init];;
    NSArray* sortedNums = [nums sortedArrayUsingSelector:@selector(compare:)];
    
    for(NSInteger i = 0; i< sortedNums.count; i++){
        NSInteger sum = 0 - [[sortedNums objectAtIndex:i] intValue];
        NSInteger left = i + 1;
        NSInteger right = len - 1;
        while(left < right){
            NSInteger number = [[sortedNums objectAtIndex:left] intValue] + [[sortedNums objectAtIndex:right] intValue];
            if(sum > number){
                left ++;
            }else if(sum < number){
                right --;
            }else{
                NSMutableArray *tmp = [[NSMutableArray alloc] initWithCapacity:3];
                [tmp insertObject:[sortedNums objectAtIndex:0] atIndex:0];
                [tmp insertObject:[sortedNums objectAtIndex:left] atIndex:1];
                [tmp insertObject:[sortedNums objectAtIndex:right] atIndex:2];
                [ret addObject:tmp];
                
                while(left<right && [[sortedNums objectAtIndex:left] intValue]== [[tmp objectAtIndex:1] intValue]) left++;
                while(left<right && [[sortedNums objectAtIndex:right] intValue]== [[tmp objectAtIndex:2] intValue]) right--;
            }
            
            while(i+1 < len && [[sortedNums objectAtIndex:i] intValue]== [[sortedNums objectAtIndex:i+1] intValue]) i++;
        }
    }
    
    return ret;
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

