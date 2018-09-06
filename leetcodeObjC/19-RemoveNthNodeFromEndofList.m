//
//  19-RemoveNthNodeFromEndofList.m
//  leetcode
//
//  Created by lx on 3/16/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "19-RemoveNthNodeFromEndofList.h"

@implementation Solution19: NSObject
- (ListNode *) removeNthFromEnd: (ListNode *)head
                               : (NSInteger) n
{
    if(head == nil) return nil;
    
    ListNode *fast = head;
    ListNode *slow = head;
    
    for(NSInteger i = 0; i < n; ++i){
        fast = fast.next;
    }
    
    if(fast != nil){
        while(fast.next != nil){
            fast = fast.next;
            slow = slow.next;
        }
        
        ListNode *tmp = slow.next;
        slow.next = tmp.next;
        return head;
    }else{
        ListNode *tmp = head;
        head = head.next;
        return head;
    }
    
}

@end
