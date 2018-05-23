//
//  92-ReverseLinkedListII.m
//  leetcode
//
//  Created by lx on 3/13/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "92-ReverseLinkedListII.h"

@implementation Solution92: NSObject
- (ListNode *) reverseList: (ListNode *)head
                      from: (NSUInteger) m
                        to: (NSUInteger) n
{
    ListNode *dummy = [[ListNode alloc] init];
    dummy.val = -1;
    dummy.next = head;
    ListNode *cur = dummy;
    
    ListNode *pre = [[ListNode alloc] init];
    ListNode *front = [[ListNode alloc] init];
    ListNode *last = [[ListNode alloc] init];
    pre.val = 0;
    front.val = 0;
    last.val = 0;

    for (NSInteger i = 1; i <= m - 1; ++i) cur = cur.next;
    pre = cur;
    last = cur.next;
    for (NSInteger i = m; i < n; i++) {
        cur = pre.next;
        pre.next = cur.next;
        cur.next = front;
        front = cur;
    }
    cur = pre.next;
    pre.next = front;
    last.next = cur;
    return dummy.next;
}

@end
