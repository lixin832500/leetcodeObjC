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
- (NSMutableArray *)levelOrder:(TreeNode *)treeNode
{
    NSMutableArray *levelOrderArray = [NSMutableArray array];
    if (treeNode == nil) return levelOrderArray;
    
    NSMutableArray *queue = [NSMutableArray array];
    [queue addObject: treeNode];
    while (queue.count != 0) {
        NSMutableArray *eachLevelArray = [NSMutableArray array];
        int size = (int)[queue count];
        for (int i = 0; i<size; i++) {
            TreeNode* node = [[TreeNode alloc]init];
            node = [queue firstObject];
            [queue removeObjectAtIndex: 0];
            [eachLevelArray addObject:@(node.val)];
//            [eachLevelArray addObject: [NSNumber numberWithInt: (int)node.val]];
            if (node.left)  {
                [queue addObject: node.left];
            }
            if (node.right) {
                [queue addObject: node.right];
            }
        }
        [levelOrderArray addObject: eachLevelArray];
    }
    return levelOrderArray;
}

@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        TreeNode *treeNode1 = [[TreeNode alloc] init];
//        TreeNode *treeNode21 = [[TreeNode alloc] init];
//        TreeNode *treeNode22 = [[TreeNode alloc] init];
//        TreeNode *treeNode31 = [[TreeNode alloc] init];
//        TreeNode *treeNode32 = [[TreeNode alloc] init];
//
//        treeNode1.val = 3;
//        treeNode21.val = 9;
//        treeNode22.val = 20;
//        treeNode31.val = 15;
//        treeNode32.val = 7;
//
//        treeNode1.left = treeNode21;
//        treeNode1.right = treeNode22;
//        treeNode22.left = treeNode31;
//        treeNode22.right = treeNode32;
//
//        Solution102 *s = [[Solution102 alloc] init];
//        
//        NSMutableArray* array = [s levelOrder : treeNode1];
//        NSEnumerator* enumer = [array objectEnumerator];
//
//        id obj;
//
//        while (obj = [enumer nextObject]) {//自动取值，然后向下移动一下
//            NSMutableArray * levelArray = obj;
//            NSEnumerator* levelenumer = [levelArray objectEnumerator];
//            id levelObj;
//            while (levelObj = [levelenumer nextObject]) {//自动取值，然后向下移动一下
//                NSNumber* num = levelObj;
//                NSLog(@"num = %@",num);
//            }
//        }//
//    }
//    return 0;
//}

