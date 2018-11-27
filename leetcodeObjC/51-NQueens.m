//
//  51-NQueens.m
//  leetcodeObjC
//
//  Created by lx on 8/30/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "51-NQueens.h"

@implementation Solution51 : NSObject
-(NSArray*) solveNQueens: (NSInteger)n
{
    NSMutableArray* res = [NSMutableArray array];
    NSMutableArray* pos = [[NSMutableArray alloc] initWithCapacity:n];
    
    for(NSInteger i = 0; i< n; i++){
        [pos addObject: @(-1)];
    }
    
    [self solveNQueensDFS:pos row:0 res: res];
    
    return [res copy];
}

-(void) solveNQueensDFS: (NSMutableArray*) pos row: (NSInteger) row res:(NSMutableArray*) res
{
    NSInteger n = [pos count];
    if(row == n){
        NSMutableArray* outRow = [[NSMutableArray alloc] initWithCapacity:n];
        for(NSInteger i = 0; i< n; i++){
            [outRow addObject: @"."];
        }
        NSMutableArray* out = [[NSMutableArray alloc] initWithCapacity:n];
        for(NSInteger i = 0; i< n; i++){
            [out addObject: outRow];
        }
        
        for(NSInteger i = 0; i< n; ++i){
            NSMutableArray* outRow = [NSMutableArray arrayWithArray: out[i]];
            [outRow replaceObjectAtIndex:[pos[i] intValue] withObject: @"Q"];
            [res addObject:outRow];
        }
    }else{
        for(NSInteger col = 0; col < n; ++col){
            if([self isValid: pos row: row col:col]){
                pos[row] = @(col);
                [self solveNQueensDFS: pos row:row+1 res: res];
                pos[row] = @(-1);
            }
        }
    }
}

-(BOOL) isValid: (NSMutableArray*) pos row: (NSInteger) row col:(NSInteger) col
{
    for(NSInteger i = 0; i< row; ++i){
        if(col == [pos[i] intValue] || ABS(row - i) == ABS(col - [pos[i] intValue])){
            return NO;
        }
    }
    
    return YES;
}
@end
