//
//  98-ValidateBinarySearchTree.m
//  leetcode
//
//  Created by lx on 2/15/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "98-ValidateBinarySearchTree.h"

@implementation Solution98 : NSObject
- (BOOL)isValidBST: (TreeNode *)root
{
    if(root == nil) return YES;
    NSMutableArray* list =  [[NSMutableArray alloc] init];
    
    [self inorder:root withResult:list];
    
    for (NSInteger i = 1; i < list.count; i++) {
        NSNumber* myArrayElementPre = [list objectAtIndex: (i-1)];
        NSNumber* myArrayElementNext = [list objectAtIndex: i ];
        if(myArrayElementPre >= myArrayElementNext){
            return NO;
        }
    }
    
    return YES;
}

- (void)inorder:(TreeNode*) root
     withResult:(NSMutableArray*) ret
{
    if (root == nil) return;
    if(root.left != nil) [self inorder:root.left withResult:ret];
    NSNumber* value = [NSNumber numberWithInt: (int)root.val];
    [ret addObject: value];
    if(root.right != nil) [self inorder:root.right withResult:ret];
}
@end
