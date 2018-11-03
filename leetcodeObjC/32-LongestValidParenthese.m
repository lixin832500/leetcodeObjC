//
//  32-LongestValidParenthese.m
//  leetcodeObjC
//
//  Created by lx on 8/12/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "32-LongestValidParentheses.h"

@implementation Solution32 : NSObject
-(NSInteger) lognestValidParentheses:(NSString*) s
{
    NSInteger res = 0, start = 0;
    NSMutableArray* stack = [NSMutableArray array];
    for(NSInteger i = 0; i< s.length; i++){
        if([s characterAtIndex: i] == '(') [stack addObject: @(i)];
        else if([s characterAtIndex: i] == ')'){
            if([stack count] == 0) start = i +1;
            else{
                [stack removeLastObject];
                res = [stack count] == 0? MAX(res, i - start + 1): MAX(res, i - [[stack lastObject] integerValue]);
            }
        }
    }
    return res;
}
@end
