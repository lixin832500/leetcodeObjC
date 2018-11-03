//
//  31-NextPermutation.m
//  leetcodeObjC
//
//  Created by lx on 8/10/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "31-NextPermutation.h"

@implementation Solution31 : NSObject
- (NSArray*)nextPermutation:(NSArray*)num
{
    NSInteger cur;
    NSInteger pre;
    NSInteger len = [num count];
    if(len < 2) return num;
    
    NSMutableArray* ret = [[NSMutableArray alloc] init];
    ret = [NSMutableArray arrayWithArray: num];
   
    for(cur = len - 1; cur >0; cur--){
        pre = cur -1;
        if([num[cur] intValue] > [num[pre] intValue]){
            NSInteger tmpPos = len - 1;
            while([num[pre] intValue] >= [num[tmpPos] intValue]){
                tmpPos --;
            }
       
            [ret exchangeObjectAtIndex:tmpPos withObjectAtIndex: pre];
            [self reverse: ret: cur: len -1];
            return [ret copy];
        }
    }
    [self reverse: ret: 0: len -1];
    return [ret copy];
}

- (void) reverse: (NSMutableArray*) num : (NSInteger) left : (NSInteger) right
{
    while(left < right){
        NSInteger tmp = [num[right] intValue];
        num[right] = num[left];
        [num replaceObjectAtIndex: left withObject: @(tmp)];
        left++;
        right--;
    }
}
@end
