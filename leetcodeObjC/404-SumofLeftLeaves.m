//
//  404-SumofLeftLeaves.m
//  leetcode
//
//  Created by lx on 9/29/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "404-SumofLeftLeaves.h"

@implementation Solution404 : NSObject
- (NSInteger) sumOfLeftLeaves:(TreeNode *)root
{
    
    NSInteger count_left = 0;
    NSInteger count_right = 0;
    if (root == nil) {
        return 0;
    }
    if (root.left) {
        count_left = root.left.val + [self sumOfLeftLeaves:root.left];
    }
    if (root.right) {
        count_right = [self sumOfLeftLeaves:root.right.left];
    }
    
    return count_left + count_right;
}

@end

