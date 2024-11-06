//
//  94-BinaryTreeInorderTraversal.m
//  leetcode
//
//  Created by lx on 10/15/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "94-BinaryTreeInorderTraversal.h"

@implementation Solution94 : NSObject
- (NSArray<NSNumber *> *)inorderTraversal: (TreeNode *)root
{
    
    NSMutableArray<NSNumber *> * result =  [[NSMutableArray alloc] init];
    [self inorder:root result:result];
    return [result copy];
}

- (void)inorder:(TreeNode*) node result:(NSMutableArray*) result
{
    if (node == nil) return;
    if (node.left != nil) [self inorder:node.left result:result];
    [result addObject: @(node.val)];
    if(node.right != nil) [self inorder:node.right result:result];
}

@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        TreeNode *treeNode1 = [[TreeNode alloc] initWithValue:3];
//        TreeNode *treeNode21 = [[TreeNode alloc] initWithValue:9];
//        TreeNode *treeNode22 = [[TreeNode alloc] initWithValue:20];
//        TreeNode *treeNode31 = [[TreeNode alloc] initWithValue:15];
//        TreeNode *treeNode32 = [[TreeNode alloc] initWithValue:7];
//
//        treeNode1.left = treeNode21;
//        treeNode1.right = treeNode22;
//        treeNode22.left = treeNode31;
//        treeNode22.right = treeNode32;
//
//        Solution94 *s = [[Solution94 alloc] init];
//
//        NSArray<NSNumber *> *array = [s inorderTraversal : treeNode1];
//        NSEnumerator* enumer = [array objectEnumerator];
//
//        id obj;
//
//        while (obj = [enumer nextObject]) {//自动取值，然后向下移动一下
//            NSNumber* num = obj;
//            NSLog(@"num = %@",num);
//        }//
//    }
//    return 0;
//}
