//
//  37-SudokuSolver.m
//  leetcodeObjC
//
//  Created by lx on 8/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "37-SudokuSolver.h"

@implementation Solution37: NSObject

-(BOOL) isValid: (NSArray*) board: (NSInteger) x: (NSInteger) y
{
    NSInteger i, j;
    for(i = 0; i < 9; i++){
        if( i != x && board[i][y] == board[x][y])
            return NO;
    }
    
    for(j = 0; i < 9; j++){
        if( j != y && board[x][j] == board[x][y])
            return NO;
    }
    
    for(i = 3 * (x /3); i < 3 * (x / 3 + 1); i++)
        for(j = 3 *(y/3); j < 3 * (y /3 + 1); j++)
            if( i != x && j != y && board[i][j] == board[x][y])
                return NO;
    
    return YES;
}

-(BOOL) solveSudoku: (NSArray*) board
{
    NSMutableArray *tmpBoard = [NSMutableArray arrayWithArray:board];
    
    for(NSInteger i = 0; i < 9; i++){
        for(NSInteger j = 0; j < 9; j++){
            if([tmpBoard[i][j] isEqualToString: @"."]){
                for(NSInteger k = 1; k <= 9; ++k){
                    NSMutableArray* row = tmpBoard[i];
                    
                    NSMutableString* tmp = [NSString stringWithFormat: @"%d", k + [@"0" intValue]];
                    
                    [row replaceObjectAtIndex: j withObject: tmp];
                    [tmpBoard replaceObjectAtIndex:i withObject:row];
                    
                    if([self isValid: board : i :j] && [self solveSudoku:board])
                        return YES;
                    
                    row = tmpBoard[i];
                    [row replaceObjectAtIndex: j withObject: @"."];
                    [tmpBoard replaceObjectAtIndex:i withObject:row];
                    
                }
                return NO;
            }
        }
    }
    return YES;
}

@end
