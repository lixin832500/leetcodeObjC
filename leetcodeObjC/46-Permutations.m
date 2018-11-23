//
//  46-Permutations.m
//  leetcodeObjC
//
//  Created by lx on 8/22/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "46-Permutations.h"

@implementation Solution46 : NSObject
-(NSArray*) permute:(NSArray*) nums
{
    NSMutableArray *ret = [NSMutableArray array];
    if([nums count] == 0) return ret;
    NSMutableArray *item = [NSMutableArray array];
    NSMutableArray *visited = [[NSMutableArray alloc] initWithCapacity: [nums count]];
    for(NSInteger i = 0; i < [nums count]; i++){
        [visited insertObject:[NSNumber numberWithInt:0] atIndex:i];
    }

    [self permuteDFS: nums depth: 0 visited: visited item : item ret: ret];
    return [ret copy];
}

-(void) permuteDFS:(NSArray*) nums depth:(NSInteger)depth visited:(NSMutableArray *)visited item: (NSMutableArray *)item ret : (NSMutableArray *)ret
{
    if(depth == [nums count]){
        [ret addObject: [NSArray arrayWithArray:item]];
        return;
    }else{
        for(NSInteger i = 0; i< [nums count]; i++){
            if([visited[i] intValue] ==0){
                visited[i] = @1;
                [item addObject: @([nums[i] intValue])];
                [self permuteDFS:nums depth: depth+1 visited:visited item:item ret:ret];
                [item removeLastObject];
                visited[i] = @0;
            }
        }
    }
}
@end
