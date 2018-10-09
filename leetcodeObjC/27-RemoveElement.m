//
//  27-RemoveElement.m
//  leetcodeObjC
//
//  Created by lx on 7/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "27-RemoveElement.h"

@implementation Solution27 : NSObject
-(NSInteger) removeElement: (NSArray *) nums : (NSInteger) val
{
    if([nums count] == 0) return 0;
    NSMutableArray *arr = [NSMutableArray arrayWithArray: nums];
    
    NSInteger cur = 0;
    for(NSInteger i = 1; i < [nums count]; i++){
        if([arr[i] intValue] != val){
            arr[++cur] = arr[i];
        }
    }
    
    if([arr[0] intValue] == val){
        for(NSInteger i =0; i < cur; i++){
            arr[i] = arr[i+1];
        }
        cur = cur -1;
    }
    
    return cur + 1;
}
@end
