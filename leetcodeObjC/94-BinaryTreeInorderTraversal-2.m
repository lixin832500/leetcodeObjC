//
//  94-BinaryTreeInorderTraversal-2.m
//  leetcode
//
//  Created by lx on 1/12/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "94-BinaryTreeInorderTraversal-2.h"

@implementation Solution94_2 : NSObject
- (NSMutableArray *)inorderTraversal: (TreeNode *)root
{
    
    NSMutableArray* ret =  [[NSMutableArray alloc] init];
    if(root == nil) return ret;
    NSMutableArray *stack = [NSMutableArray array];
    TreeNode* p = root;
    while(p != nil || stack.count != 0){
        if(p != nil){
            [stack addObject: p];
            p = p.left;
        }else{
            TreeNode* node = [stack lastObject];
//            [ret addObject: [NSNumber numberWithInt: (int)node.val]];
            [ret addObject:@(node.val)];
            [stack removeLastObject];
            p = node.right;
        }
    }
    
    return ret;
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
//        Solution94_2 *s = [[Solution94_2 alloc] init];
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
