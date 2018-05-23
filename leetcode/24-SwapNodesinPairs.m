//
//  24-SwapNodesinPairs.m
//  leetcode
//
//  Created by lx on 3/16/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "24-SwapNodesinPairs.h"

@implementation Solution24: NSObject
- (ListNode *) swapPairs: (ListNode *)head
{
    if(head == nil || head.next == nil)
        return head;
    
    ListNode* dummy = [[ListNode alloc] init];
    dummy.val = -1;
    dummy.next = head;
    
    ListNode* p1 = dummy;
    ListNode* p2 = head;
    
    while(p2 != nil && p2.next!=nil){
        ListNode* node = p2.next.next;
        p2.next.next = p2;
        p1.next = p2.next;
        p2.next = node;
        p1 = p2;
        p2 = p2.next;
    }
    return dummy.next;
}

@end
