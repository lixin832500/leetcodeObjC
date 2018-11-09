//
//  39-CombinationSum.m
//  leetcodeObjC
//
//  Created by lx on 8/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "39-CombinationSum.h"

@implementation Solution39 : NSObject
-(NSArray *) combinationSum : (NSArray*) candidates target: (NSInteger) target
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
            [output addObject: candidates[i]];
            target = target - [candidates[i] intValue];
            [self combinationSumDFS: candidates target: target  start: i output:output res:res];
            [output removeLastObject];
        }
    }
}

@end
