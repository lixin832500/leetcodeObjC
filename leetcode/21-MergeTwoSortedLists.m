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

- (void)printList:(ListNode *)head
{
    while(head) {
        printf("%d\t", (int)head.val);
        head = head.next;
    }
    printf("\n");
}

@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        ListNode *listNode11 = [[ListNode alloc] init];
//        ListNode *listNode21 = [[ListNode alloc] init];
//        ListNode *listNode12 = [[ListNode alloc] init];
//        ListNode *listNode22 = [[ListNode alloc] init];
//        ListNode *listNode13 = [[ListNode alloc] init];
//        ListNode *listNode23 = [[ListNode alloc] init];
//        ListNode *listNode14 = [[ListNode alloc] init];
//        ListNode *listNode24 = [[ListNode alloc] init];
//
//        listNode11.val = 1;
//        listNode12.val = 5;
//        listNode13.val = 7;
//        listNode14.val = 90;
//        listNode11.next = listNode12;
//        listNode12.next = listNode13;
//        listNode13.next = listNode14;
//        listNode14.next = nil;
//
//        listNode21.val = 2;
//        listNode22.val = 6;
//        listNode23.val = 8;
//        listNode24.val = 70;
//        listNode21.next = listNode22;
//        listNode22.next = listNode23;
//        listNode23.next = listNode24;
//        listNode24.next = nil;
//        
//        Solution21 *s = [[Solution21 alloc] init];
//
//        ListNode *mergedList = [s mergeList :listNode11 withList: listNode21];
//        [s printList: mergedList];
//    }
//    return 0;
//}

