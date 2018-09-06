//
//  206-ReverseLinkedList.m
//  leetcode
//
//  Created by lx on 3/12/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "206-ReverseLinkedList.h"

@implementation Solution206: NSObject
- (ListNode *) reverseList: (ListNode *)head
{
    if(head == nil) return head;
    
    ListNode *pre = nil;
    ListNode *cur = head;
    while(cur != nil){
        ListNode *next = cur.next;
        cur.next = pre;
        pre = cur;
        cur = next;
    }
    
    return pre;
}

@end
