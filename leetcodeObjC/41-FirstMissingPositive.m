//
//  41-FirstMissingPositive.m
//  leetcodeObjC
//
//  Created by lx on 8/20/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "41-FirstMissingPositive.h"

@implementation Solution41 : NSObject
-(NSInteger) firstMissingPositive:(NSArray*) nums
{
    if([nums count] == 0) return 1;
    NSMutableArray *num = [NSMutableArray arrayWithArray: nums];
    
    NSInteger len = [num count];
    NSInteger i = 0;
    while(i < len){
        if([num[i] intValue] != i+1 && [num[i] intValue] > 0 && [num[i] intValue] <= len && [num[i] intValue] != [num[[num[i] intValue] -1] intValue]){
            [num exchangeObjectAtIndex: i withObjectAtIndex: [num[i] intValue] -1];
        }else{
            ++i;
        }
    }
    
    for(NSInteger i = 0; i <len; ++i){
        if([num[i] intValue] != i+1) return i +1;
    }
    
    return len +1;
}
@end
