//
//  22-GenerateParentheses.m
//  leetcodeObjC
//
//  Created by lx on 7/10/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "22-GenerateParentheses.h"

@implementation Solution22: NSObject
- (NSArray *) generateParenthesis: (NSInteger) n
{
    NSMutableArray * res = [NSMutableArray array];
    NSMutableString * tmpRes = [NSMutableString stringWithString:@""];
    
    if(n <= 0) return res;
    
    [self generateParenthesisDFS: n right: n tmpRes: tmpRes res: res];
    return [res copy];
}

- (void) generateParenthesisDFS: (NSInteger) left right : (NSInteger) right tmpRes: (NSMutableString *) tmpRes res: (NSMutableArray *) res
{
    if(left > right) return;
    if(left == 0 && right == 0) {
        [res addObject:[NSString stringWithString: tmpRes]];
        return;
    }
    if(left > 0) {
        [tmpRes appendString: @"("];
        [self generateParenthesisDFS: left-1 right:right tmpRes: tmpRes res:res];
        [tmpRes deleteCharactersInRange:NSMakeRange(tmpRes.length - 1, 1)];
    }
    if(right > 0){
        [tmpRes appendString: @")"];
        [self generateParenthesisDFS: left right:right-1 tmpRes:tmpRes res:res];
        [tmpRes deleteCharactersInRange:NSMakeRange(tmpRes.length - 1, 1)];
    }
}
@end
