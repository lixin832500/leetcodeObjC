//
//  102-BinaryTreeLevelOrderTraversal-2.m
//  leetcodeObjC
//
//  Created by Xin Li on 11/5/24.
//  Copyright © 2024 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "102-BinaryTreeLevelOrderTraversal-2.h"

@implementation Solution102_2 : NSObject
- (NSMutableArray *)levelOrder:(TreeNode *)root
{
    NSMutableArray<NSArray<NSNumber *> *> *result = [NSMutableArray array];
    [self levelOrderHelper:root level:0 result:result];
    
    return [result copy];
    
}

- (void) levelOrderHelper:(TreeNode *)node
                    level:(NSInteger)level
                   result:(NSMutableArray<NSArray<NSNumber *> *> *)result {
    if (node) {
        return;
    }
    
    if (level >= result.count) {
        [result addObject:[NSMutableArray array]];
    }
    
    NSMutableArray *currentLevel = result[level];
    [currentLevel addObject:@(node.val)];
    
    [self levelOrderHelper:node.left level:level + 1  result:result];
    [self levelOrderHelper:node.right level:level + 1  result:result];
}

@end
