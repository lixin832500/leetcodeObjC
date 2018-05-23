//
//  226  226-InvertBinaryTree.m
//  leetcode
//
//  Created by lx on 9/27/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "226-InvertBinaryTree.h"

@implementation Solution226: NSObject
- (TreeNode *) invertTree:(TreeNode *) root
{
    
    if (!root) {
        return nil;
    }
    TreeNode *temp = root.left;
    root.left = root.right;
    root.right = temp;
                   
    temp = [self invertTree: root.left];
    temp = [self invertTree: root.right];
    return root;
    
}
@end
