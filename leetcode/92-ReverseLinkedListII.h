//
//  92-ReverseLinkedListII.h
//  leetcode
//
//  Created by lx on 5/23/18.
//  Copyright © 2018 lx. All rights reserved.
//

#ifndef _2_ReverseLinkedListII_h
#define _2_ReverseLinkedListII_h

@interface Solution92: NSObject
- (ListNode *) reverseList: (ListNode *)head
                      from: (NSUInteger) m
                        to: (NSUInteger) n;

@end
#endif /* _2_ReverseLinkedListII_h */
