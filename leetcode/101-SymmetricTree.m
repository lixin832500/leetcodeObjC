//
//  101-SymmetricTree.m
//  leetcode
//
//  Created by lx on 10/15/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "101-SymmetricTree.h"

@implementation Solution101 : NSObject
- (BOOL)isSymmetric:(TreeNode *)p
{
    if(p == nil) return YES;
    if(p.left == nil && p.right == nil) return YES;
    return [self isMirrorTree:p.left :p.right];
}

- (BOOL)isMirrorTree:(TreeNode *) left
                   :(TreeNode *) right
{
    if(nil == left && nil == right) return YES;
    if(nil == left || nil == right) return NO;
    if(left.val != right.val) return YES;
    if(![self isMirrorTree:left.left :right.right] || ![self isMirrorTree:left.right :right.left])
        return NO;
    
    return YES;
}
@end
