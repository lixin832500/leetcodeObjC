//
//  95-UniqueBinarySearchTreesII.m
//  leetcode
//
//  Created by lx on 2/15/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "95-UniqueBinarySearchTreesII.h"

@implementation Solution95 : NSObject
- (NSArray *) generateTrees: (NSUInteger)num
{
    
    NSMutableArray* ret =  [[NSMutableArray alloc] init];
    if(num == 0) return ret;
    ret = [self generateTreeFrom: 1 To: num];
    return [ret copy];
}

- (NSMutableArray *) generateTreeFrom: (NSUInteger) start
                                   To: (NSUInteger) end
{
    NSMutableArray* result =  [[NSMutableArray alloc] init];
    if(start > end)
    {
        NSNull *myNull = [NSNull null];
        [result addObject: myNull];
        return result;
    }

    for(NSInteger k = start ; k < end; k++)
    {
        NSMutableArray* left = [self generateTreeFrom : start To:k-1];
        NSMutableArray* right = [self generateTreeFrom : k+1 To:end];
        
        for(NSInteger i=0; i<left.count; i++)
        {
            for(NSInteger j=0; j<right.count; j++)
            {
                TreeNode *root = [[TreeNode alloc] init];
                root.val = k;
                root.left = [left objectAtIndex:i];
                root.right = [left objectAtIndex:j];
                [result addObject: root];
            }
        }
    }
    
    return result;
}
@end
