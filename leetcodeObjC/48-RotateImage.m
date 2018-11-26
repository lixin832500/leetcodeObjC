//
//  48-RotateImage.m
//  leetcodeObjC
//
//  Created by lx on 8/24/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "48-RotateImage.h"

@implementation Solution48: NSObject
-(NSArray*) rotate:(NSArray*) matrix
{
    NSMutableArray *tmpMatrix = [NSMutableArray arrayWithArray: matrix];
    NSInteger n = [tmpMatrix count];
    
    for(NSInteger i = 0; i < n; i++){
        for(NSInteger j = 0; j < n; j++){
            if(i < j){
                NSInteger tmp = [tmpMatrix[i][j] intValue];
    
                NSMutableArray* tmpRow = [NSMutableArray arrayWithArray: tmpMatrix[i]];
                [tmpRow replaceObjectAtIndex:j withObject: @([tmpMatrix[j][i] intValue])];
                [tmpMatrix replaceObjectAtIndex:i withObject:tmpRow];
                
                NSMutableArray *row = [NSMutableArray arrayWithArray: tmpMatrix[j]];
                [row replaceObjectAtIndex:i withObject:@(tmp)];
                [tmpMatrix replaceObjectAtIndex:j withObject:row];
            }
        }
    }
    
    for(NSInteger j = 0; j < n/2; j++){
        for(NSInteger i = 0; i < n; i++){
            NSInteger tmp = [tmpMatrix[i][j] intValue];
            
            NSMutableArray* tmpRow = [NSMutableArray arrayWithArray: tmpMatrix[i]];
            [tmpRow replaceObjectAtIndex:j withObject: @([tmpMatrix[i][n-j-1] intValue])];
            [tmpMatrix replaceObjectAtIndex:i withObject:tmpRow];
            
            NSMutableArray *row = [NSMutableArray arrayWithArray: tmpMatrix[i]];
            [row replaceObjectAtIndex:n-j-1 withObject:@(tmp)];
            [tmpMatrix replaceObjectAtIndex:i withObject:row];
        }
    }
    
    return [tmpMatrix copy];
}
@end
