//
//  20-ValidParentheses.m
//  leetcodeObjC
//
//  Created by lx on 7/4/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "20-ValidParentheses.h"

@implementation Solution20 : NSObject

- (BOOL) isValid:(NSString *) s
{
    if(s == nil) return YES;
    NSMutableArray *stack = [NSMutableArray array];
    for(NSInteger i=0; i< s.length; i++){
        NSString *ichar = [NSString stringWithFormat:@"%c", [s characterAtIndex:i]];
        if([ichar isEqualToString: @"("] ||  [ichar isEqualToString: @"["]  || [ichar isEqualToString: @"{"] ){
            [stack addObject: [NSString stringWithString: ichar]];
        }else{
            if([stack count] == 0) return NO;
            if([ichar isEqualToString: @")"]){
                NSString *tmp = [stack lastObject];
                if(![tmp isEqualToString: @"("]) return false;
                [stack removeLastObject];
            }
            if([ichar isEqualToString: @"]"]){
                NSString *tmp = [stack lastObject];
                if(![tmp isEqualToString: @"["]) return false;
                [stack removeLastObject];
            }
            if([ichar isEqualToString: @"}"]){
                NSString *tmp = [stack lastObject];
                if(![tmp isEqualToString: @"{"]) return false;
                [stack removeLastObject];
            }
            
        }
    }
    return [stack count] == 0?YES:NO;
}
@end
