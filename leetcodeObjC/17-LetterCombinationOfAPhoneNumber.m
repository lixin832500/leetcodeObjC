//
//  17-LetterCombinationOfAPhoneNumber.m
//  leetcodeObjC
//
//  Created by lx on 6/30/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "17-LetterCombinationOfAPhoneNumber.h"

@implementation Solution17: NSObject
- (NSArray *)letterCombination: (NSString *)digits
{
    NSMutableArray * ret = [NSMutableArray array];
    if(digits.length == 0) return [ret copy];
    NSMutableString * tmpRet = [NSMutableString stringWithString:@""];
    [self dfs :digits depth: 0 tmpRet: tmpRet ret: ret];
    return [ret copy];
}

-(void) dfs :(NSString*) digits depth: (NSInteger) depth tmpRet: (NSMutableString *)tmpRet ret: (NSMutableArray *) ret
{
    NSArray* digitToStr = [NSArray arrayWithObjects: @"abc", @"def", @"ghi", @"jkl", @"mno", @"pqrs", @"tuv", @"wxyz",nil];
    if(depth == digits.length){
        [ret addObject: [NSString stringWithString: tmpRet]];
        return;
    }
    NSString* str = digitToStr[[digits characterAtIndex: depth] - '2'];
    for(NSInteger i = 0; i< str.length; i++){
        NSString * ichar = [NSString stringWithFormat:@"%c", [str characterAtIndex:i]];
        [tmpRet appendString: ichar];
        [self dfs :digits depth: depth + 1 tmpRet: tmpRet ret: ret];
        [tmpRet deleteCharactersInRange: NSMakeRange(tmpRet.length - 1, 1)];
    }
}
        
@end
