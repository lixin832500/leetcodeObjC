//
//  23-MergeKSortedLists.m
//  leetcodeObjC
//
//  Created by lx on 7/11/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"
#import "23-MergeKSortedLists.h"

@implementation Solution23 : NSObject
- (ListNode *) mergeKLists: (NSArray*) lists
{
    NSInteger sz = lists.count;
    if(sz == 0) return nil;
    
    NSMutableArray *tmpLists = [lists mutableCopy];
    
    while(sz > 1){
        NSInteger k = (sz+1) /2;
        for(NSInteger i = 0; i< sz/2; i++){
            ListNode *node1 = (ListNode *)tmpLists[i];
            ListNode *node2 = (ListNode *)tmpLists[i+k];
            node1 = [self mergeTwoLists:node1 :node2];
        }
        sz = k;
    }
    
    return (ListNode*)tmpLists[1];
}

- (ListNode *) mergeTwoLists: (ListNode *) l1 : (ListNode *) l2
{
    // sanity check
    if(l1 == nil) return l2;
    if(l2 == nil) return l1;
    
    ListNode *start = [[ListNode alloc] init];
    ListNode *p1 = [[ListNode alloc] init];
    
    if(l1.val < l2.val){
        start = l1;
        p1 = start;
        l1 = l1.next;
    }else{
        start = l2;
        p1 = start;
        l2 = l2.next;
    }
    
    while(l1 != nil && l2 != nil){
        if(l1.val < l2.val){
            p1.next = l1;
            p1 = l1;
            l1 = l1.next;
        }else{
            p1.next = l2;
            p1 = l2;
            l2 = l2.next;
        }
    }
    if(l1 != nil){
        p1.next = l1;
    }else{
        p1.next = l2;
    }
    
    return start;
    
}

@end
