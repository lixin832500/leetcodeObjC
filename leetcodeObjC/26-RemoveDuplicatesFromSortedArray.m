//
//  26-RemoveDuplicatesFromSortedArray.m
//  leetcodeObjC
//
//  Created by lx on 7/12/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "26-RemoveDuplicatesFromSortedArray.h"

@implementation Solution26: NSObject
- (NSInteger)removeDuplicate: (NSArray *)nums
{
    if([nums count] == 0) return 0;
    if([nums count] == 1) return 1;
    
    NSInteger cur = 0;
    NSMutableArray *array = [NSMutableArray arrayWithArray: nums];
    for(NSInteger i = 1; i < [nums count]; i++){
        if(array[cur] != array[i]){
            array[++cur] = array[i];
        }
    }
    return cur+1;
}
@end
