//
//  TreeNode.m
//  leetcode
//
//  Created by lx on 1/11/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

@implementation TreeNode

- (instancetype)initWithValue:(NSInteger)value
{
    if (self = [super init]) {
        _val = value;
        _left = nil;
        _right = nil;
    }
    return self;
}

@end
