//
//  55-JumpGame.m
//  leetcodeObjC
//
//  Created by Xin Li on 7/24/23.
//  Copyright © 2023 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "55-JumpGame.h"

@implementation Solution55 : NSObject
- (bool) canJump : (NSArray*)nums 
{
    NSInteger reach = 0;
    NSInteger i = 0;
    for(; i < [nums count]; i++){
        reach = MAX(reach, i + [[nums objectAtIndex:i] intValue]);
    }
    
    return i == [nums count];
}
@end
