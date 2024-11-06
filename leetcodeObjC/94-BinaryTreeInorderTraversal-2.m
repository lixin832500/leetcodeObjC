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
- (NSArray *)inorderTraversal: (TreeNode *)root
{
    
    NSMutableArray<NSNumber *> *result =  [[NSMutableArray alloc] init];
    if(root == nil) return result;
    NSMutableArray *stack = [NSMutableArray array];
    TreeNode* p = root;
    while(p != nil || [stack count] != 0){
        if(p != nil){
            [stack addObject: p];
            p = p.left;
        } else {
            TreeNode* node = [stack lastObject];
//            [ret addObject: [NSNumber numberWithInt: (int)node.val]];
            [result addObject:@(node.val)];
            [stack removeLastObject];
            p = node.right;
        }
    }
    
    return [result copy];
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
//        Solution94_2 *s = [[Solution94_2 alloc] init];
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
