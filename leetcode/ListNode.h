//
//  ListNode.h
//  leetcode
//
//  Created by lx on 9/26/17.
//  Copyright © 2017 lx. All rights reserved.
//

@interface ListNode : NSObject

@property (nonatomic,strong) ListNode *next;
@property (nonatomic) NSInteger val;

- (instancetype)init: (NSInteger)x;

@end
