//
//  TreeNode.h
//  leetcode
//
//  Created by lx on 9/27/17.
//  Copyright © 2017 lx. All rights reserved.
//

@interface TreeNode : NSObject

@property (nonatomic,strong) TreeNode *left;
@property (nonatomic,strong) TreeNode *right;
@property (nonatomic) NSInteger val;


- (instancetype)init: (NSInteger)x;
@end
