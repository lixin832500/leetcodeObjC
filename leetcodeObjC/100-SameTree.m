//
//  100-SameTree.m
//  leetcode
//
//  Created by lx on 10/15/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "100-SameTree.h"

@implementation Solution100 : NSObject
- (BOOL)isSameTree:(TreeNode *)p
                  :(TreeNode *)q
{
    if(p == nil && q == nil) return YES;
    if(p == nil || q == nil) return NO;
    
    if(p.val != q.val) return NO;
    
    if(p.val == q.val)
        return [self isSameTree:p.left :q.left] && [self isSameTree:p.right :q.right];
    
    return NO;
}

@end
