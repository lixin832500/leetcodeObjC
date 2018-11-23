//
//  45-JumpGameII.m
//  leetcodeObjC
//
//  Created by lx on 8/22/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "45-JumpGameII.h"

@implementation Solution45: NSObject
-(NSInteger) jump: (NSArray*) nums
{
    if([nums count] == 0) return 0;
    NSInteger lastReach = 0, reach = 0, step = 0;
    for(NSInteger i = 0; i <= reach && i< [nums count]; i++){
        if(i > lastReach){
            step ++;
            lastReach = reach;
        }
        reach = MAX(reach, [nums[i] intValue] + 1);
    }
    if(reach < [nums count] -1)
        return 0;
    
    return step;
}
@end
