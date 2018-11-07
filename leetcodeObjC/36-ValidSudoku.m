//
//  36-ValidSudoku.m
//  leetcodeObjC
//
//  Created by lx on 8/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "36-ValidSudoku.h"

@implementation Solution36 : NSObject
-(BOOL) isValidSudoku: (NSArray*) board
{
    if([board count] == 0) return NO;
    NSInteger row = [board count];
    NSInteger col = [board[0] count];
    for(NSInteger i = 0; i < row; i++){
        NSMutableDictionary<NSString*, NSNumber*> *rowMap = [[NSMutableDictionary alloc] init];
        NSMutableDictionary<NSString*, NSNumber*> *colMap = [[NSMutableDictionary alloc] init];
        NSMutableDictionary<NSString*, NSNumber*> *gridMap = [[NSMutableDictionary alloc] init];
        
        for(NSInteger j = 0; j < col; j++){
            if(![board[i][j] isEqualToString:@"."]){
                NSString *curKey = board[i][j];
                NSNumber *cur = rowMap[curKey];
                if([cur boolValue] == YES){
                    return NO;
                }
                NSNumber *val = [NSNumber numberWithBool: YES];
                rowMap[curKey] = val;
            }
            
            if(![board[j][i] isEqualToString:@"."]){
                NSString *curKey = board[j][i];
                NSNumber *cur = colMap[curKey];
                if([cur boolValue] == YES){
                    return NO;
                }
                NSNumber *val = [NSNumber numberWithBool: YES];
                colMap[curKey] = val;
            }
            
            if(![board[i/3*3 + j/3][i%3*3 + j%3] isEqualToString:@"."]){
                NSString *curKey = board[i/3*3 + j/3][i%3*3 + j%3];
                NSNumber *cur = gridMap[curKey];
                if([cur boolValue] == YES){
                    return NO;
                }
                NSNumber *val = [NSNumber numberWithBool: YES];
                gridMap[curKey] = val;
            }
        }
    }
    
    return YES;
}
@end
