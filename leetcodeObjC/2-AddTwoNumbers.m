//
//  2-AddTwoNumbers.m
//  leetcode
//
//  Created by lx on 10/4/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "2-AddTwoNumbers.h"

@implementation Solution2: NSObject
- (ListNode *)addTwoNumbers:(ListNode *) l1
                           :(ListNode *) l2
{
    if(nil == l1 && nil == l2) return nil;
    if(nil == l1) return l2;
    if(nil == l2) return l1;
    
    ListNode* dummy = [[ListNode alloc]init];
    dummy.val = -1;
    ListNode* p = [[ListNode alloc]init];
    p = dummy;
    NSInteger carry = 0;
    NSInteger sum = 0;
    
    while(nil != l1 && nil != l2){
        sum = l1.val + l2.val + carry;
        ListNode* node = [[ListNode alloc]init];
        node.val = sum % 10;
        p.next = node;
        carry = sum / 10;
        p = p.next;
        l1 = l1.next;
        l2 = l2.next;
    }
    
    while(nil != l1){
        sum = l1.val + carry;
        ListNode* node = [[ListNode alloc]init];
        node.val = sum % 10;
        carry = sum / 10;
        p.next = node;
        p = p.next;
        l1 = l1.next;
    }
    
    while(nil != l2){
        sum = l2.val + carry;
        ListNode* node = [[ListNode alloc]init];
        node.val = sum%10;
        carry = sum/10;
        p.next = node;
        p = p.next;
        l2 = l2.next;
    }
    
    if(carry){
        ListNode* node = [[ListNode alloc]init];
        node.val = carry;
        p.next = node;
    }
    
    return dummy.next;
}

@end
