//
//  ListNode.m
//  leetcode
//
//  Created by lx on 1/11/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@implementation ListNode

- (instancetype)init: (NSInteger)x
{
    self = [super init];
    if (self) {
        _val = x;
    }
    return self;
}

@end
