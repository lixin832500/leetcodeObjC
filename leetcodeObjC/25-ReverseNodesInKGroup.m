//
//  25-ReverseNodesInKGroup.m
//  leetcodeObjC
//
//  Created by lx on 7/12/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "25-ReverseNodesInKGroup.h"

@implementation Solution25 : NSObject
- (ListNode *) reverseKGroup: (ListNode *) head : (NSInteger) k
{
    if(!head || k ==1) return head;
    ListNode *dummy = [[ListNode alloc] init];
    dummy.val = -1;
    ListNode *pre = [[ListNode alloc] init];
    pre = dummy;
    ListNode *cur = [[ListNode alloc] init];
    cur = head;
    dummy.next = head;
    NSInteger i = 0;
    while(cur != nil){
        ++i;
        if(i % k == 0){
            pre = [self reverseOneGroup: pre : cur.next];
            cur = pre.next;
        }else{
            cur = cur.next;
        }
    }
    return  dummy.next;
}

- (ListNode *) reverseOneGroup : (ListNode *)pre : (ListNode *)next
{
    ListNode *last = pre.next;
    ListNode *cur = last.next;
    while(cur != next){
        last.next = cur.next;
        cur.next = pre.next;
        pre.next = cur;
        cur = last.next;
    }
    
    return last;
}
@end
