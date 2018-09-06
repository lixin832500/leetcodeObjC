//
//  21-MergeTwoSortedLists.m
//  leetcode
//
//  Created by lx on 9/26/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "21-MergeTwoSortedLists.h"

@implementation Solution21: NSObject
- (ListNode *)mergeList: (ListNode *)L1
               withList: (ListNode *)L2
{
    // sanity check
    if (!L1 && !L2) return nil;
    
    ListNode *headNode = nil;
    ListNode *tailNode = nil;
    ListNode *currNode = nil;
    while (L1 && L2) {
        if ( L1.val > L2.val ) {
            currNode = L2;
            L2 = L2.next;
        } else {
            currNode = L1;
            L1 = L1.next;
        }
        
        headNode = !headNode ? currNode : headNode;
        
        if (tailNode) tailNode.next = currNode;
        
        tailNode = currNode;
    }
    
    if (!headNode)
        // either L1 or L2 is empty initially
        headNode = L1 ? L1 : L2;
    else {
        // neither L1 or L2 is empty initially
        if (L1)
            // L1 is longer than L2 after while loop
            tailNode.next = L1;
        
        if (L2)
            // L2 is longer than L1 after while loop
            tailNode.next = L2;
    }
    
    return headNode;
}


@end


