//
//  54-SpiralMatrix.m
//  leetcodeObjC
//
//  Created by lx on 9/7/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "54-SpiralMatrix.h"

@implementation Solution54 : NSObject
- (NSArray*) spiralOrder : (NSArray*)matrix
{
    NSMutableArray *ret = [NSMutableArray array];
    
    if([matrix count] == 0) return [ret copy];
    NSInteger row = [matrix count];
    NSInteger col = [matrix[0] count];
    
    NSInteger rowBegin = 0;
    NSInteger rowEnd = row - 1;
    NSInteger colBegin = 0;
    NSInteger colEnd = col - 1;
    
    while(rowBegin <= rowEnd && colBegin <= colEnd){
        for(NSInteger j = colBegin; j <= colEnd; j++){
            //[[matrix objectAtIndex: rowBegin] objectAtIndex: j]
            [ret addObject: @([matrix[rowBegin][j] intValue])];
        }
        rowBegin++;
        
        for(NSInteger i = rowBegin; i <= rowEnd; i++){
            //[[matrix objectAtIndex: rowBegin] objectAtIndex: j]
            [ret addObject: @([matrix[i][colEnd] intValue])];
        }
        colEnd--;
        
        if(rowBegin <= rowEnd){
            for(NSInteger j = colEnd; j >= colBegin; j--){
                //[[matrix objectAtIndex: rowBegin] objectAtIndex: j]
                [ret addObject: @([matrix[rowEnd][j] intValue])];
            }
        }
        rowEnd--;
        
        if(colBegin <= colEnd){
            for(NSInteger i = rowEnd; i >= rowBegin; i--){
                //[[matrix objectAtIndex: rowBegin] objectAtIndex: j]
                [ret addObject: @([matrix[i][colBegin] intValue])];
            }
        }
        colBegin++;
    }
    
    return [ret copy];
}
@end
