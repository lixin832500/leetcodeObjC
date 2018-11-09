//
//  40-CombinationSumII.m
//  leetcodeObjC
//
//  Created by lx on 8/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "40-CombinationSumII.h"

@implementation Solution40 : NSObject
-(NSArray *) combinationSum2 : (NSArray*) candidates target: (NSInteger) target
{
    NSMutableArray *res = [NSMutableArray array];
    NSMutableArray *output = [NSMutableArray array];
    NSArray* sortedCandidates = [candidates sortedArrayUsingSelector:@selector(compare:)];
    [self combinationSumDFS: sortedCandidates target: target start:0 output: output res : res];
    return [res copy];
}

-(void) combinationSumDFS: (NSArray*) candidates target: (NSInteger) target  start: (NSInteger) start output: (NSMutableArray*) output res: (NSMutableArray*) res
{
    if(target < 0) return;
    else if(target == 0){
        [res addObject: [NSArray arrayWithArray:output]];
        return;
    }else{
        for(NSInteger  i = start; i < [candidates count]; ++i){
            if(i != start && [candidates[i] intValue] == [candidates[i-1] intValue]){
                continue;
            }
            
            if(target < [candidates[i] intValue]){
                break;
            }
            [output addObject: candidates[i]];
            target = target - [candidates[i] intValue];
            [self combinationSumDFS: candidates target: target  start: i+1 output:output res:res];
            [output removeLastObject];
        }
    }
}
@end
