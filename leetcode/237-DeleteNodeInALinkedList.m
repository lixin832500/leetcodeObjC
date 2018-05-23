//
//  237-DeleteNodeInALinkedList.m
//  leetcode
//
//  Created by lx on 9/27/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "237-DeleteNodeInALinkedList.h"

@implementation Solution237: NSObject
- (void)deleteNode:(ListNode *)node
{
    
    if (!node || !node.next) {
        return;
    }
    node.val = node.next.val;
    node.next = node.next.next;
}

@end

