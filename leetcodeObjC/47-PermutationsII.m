//
//  47-PermutationsII.m
//  leetcodeObjC
//
//  Created by lx on 8/23/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "47-PermutationsII.h"

@implementation Solution47 : NSObject
-(NSArray*) permuteUnique:(NSArray*) nums
{
    NSMutableArray *ret = [NSMutableArray array];
    if([nums count] ==0) return ret;
    NSArray* sortedNums = [nums sortedArrayUsingSelector:@selector(compare:)];
    NSMutableArray *item = [NSMutableArray array];
    NSMutableArray *visited = [[NSMutableArray alloc] initWithCapacity: [nums count]];
    for(NSInteger i = 0; i < [nums count]; i++){
        [visited insertObject:[NSNumber numberWithInt:0] atIndex:i];
    }
    [self permuteDFS: sortedNums depth: 0 visited: visited item : item ret: ret];
    return ret;
}

-(void) permuteDFS:(NSArray*) nums depth:(NSInteger)depth visited:(NSMutableArray *)visited item : (NSMutableArray *)item ret : (NSMutableArray *)ret
{
    if(depth >= [nums count]){
        [ret addObject: [NSArray arrayWithArray:item]];
        return;
    }else{
        for(NSInteger i = 0; i< [nums count]; i++){
            if([visited[i] intValue] ==0){
                if(i > 0 && nums[i] == nums[i-1] && [visited[i-1] intValue] ==0) continue;
                visited[i] = @1;
                [item addObject: @([nums[i] intValue])];
                [self permuteDFS:nums depth : depth+1 visited :visited item :item ret:ret];
                [item removeLastObject];
                visited[i] = @0;
            }
        }
    }
}
@end
