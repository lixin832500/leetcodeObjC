//
//  102-BinaryTreeLevelOrderTraversal.m
//  leetcode
//
//  Created by lx on 1/11/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "102-BinaryTreeLevelOrderTraversal.h"

@implementation Solution102 : NSObject
- (NSMutableArray *)levelOrder:(TreeNode *)root
{
    NSMutableArray<NSArray<NSNumber *> *> *result = [NSMutableArray array];
    if (root == nil) return result;
    
    NSMutableArray<TreeNode *> *queue = [NSMutableArray array];
    [queue addObject: root];
    while ([queue count] != 0) {
        NSMutableArray<NSNumber *> *currentLevel = [NSMutableArray array];
        int size = (int)[queue count];
        for (int i = 0; i<size; i++) {
            TreeNode* node = [queue firstObject];
            [queue removeObjectAtIndex: 0];
            
            [currentLevel addObject:@(node.val)];
            if (node.left)  {
                [queue addObject: node.left];
            }
            if (node.right) {
                [queue addObject: node.right];
            }
        }
        [result addObject: [currentLevel copy]];
    }
    return result;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TreeNode *treeNode1 = [[TreeNode alloc] initWithValue:3];
        TreeNode *treeNode21 = [[TreeNode alloc] initWithValue:9];
        TreeNode *treeNode22 = [[TreeNode alloc] initWithValue:20];
        TreeNode *treeNode31 = [[TreeNode alloc] initWithValue:15];
        TreeNode *treeNode32 = [[TreeNode alloc] initWithValue:7];

        treeNode1.left = treeNode21;
        treeNode1.right = treeNode22;
        treeNode22.left = treeNode31;
        treeNode22.right = treeNode32;

        Solution102 *s = [[Solution102 alloc] init];
        
        NSMutableArray* array = [s levelOrder : treeNode1];
        NSEnumerator* enumer = [array objectEnumerator];

        id obj;

        while (obj = [enumer nextObject]) {//自动取值，然后向下移动一下
            NSMutableArray * currentLevel = obj;
            NSEnumerator* leveleNumer = [currentLevel objectEnumerator];
            id levelObj;
            while (levelObj = [leveleNumer nextObject]) {//自动取值，然后向下移动一下
                NSNumber* num = levelObj;
                NSLog(@"num = %@",num);
            }
        }//
    }
    return 0;
}

