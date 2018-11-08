//
//  38-CountAndSay.m
//  leetcodeObjC
//
//  Created by lx on 8/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "38-CountAndSay.h"

@implementation Solution38 : NSObject
-(NSString *) countAndSay: (NSInteger) n
{
    if(n <= 0) return @"";
    NSMutableString *res = [@"1" mutableCopy];
    while(--n){
        NSMutableString *cur = [@"" mutableCopy];
        for(NSInteger i = 0; i< res.length; i++){
            NSInteger count = 1;
            while((i+1) < res.length && [res characterAtIndex:i]== [res characterAtIndex:i+1]){
                count++;
                i++;
            }
            NSString *dchar = [NSString stringWithFormat:@"%d", count];
            NSString *ichar = [NSString stringWithFormat:@"%c", [res characterAtIndex:i]];
            [cur appendString: dchar];
            [cur appendString: ichar];
        }
        res = [NSMutableString stringWithString: cur];
    }
    
    return res;
}
@end
