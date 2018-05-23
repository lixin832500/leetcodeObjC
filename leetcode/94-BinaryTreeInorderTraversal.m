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
- (NSMutableArray *)inorderTraversal: (TreeNode *)root
{
    
    NSMutableArray* ret =  [[NSMutableArray alloc] init];
    [self inorder:root withResult:ret];
    return ret;
}

- (void)inorder:(TreeNode*) root
     withResult:(NSMutableArray*) ret
{
    if (root == nil) return;
    if(root.left != nil) [self inorder:root.left withResult:ret];
    NSNumber* value = [NSNumber numberWithInt:(int)root.val];
    [ret addObject: value];
    if(root.right != nil) [self inorder:root.right withResult:ret];
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
//        Solution94 *s = [[Solution94 alloc] init];
//
//        NSMutableArray* array = [s inorderTraversal : treeNode1];
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
