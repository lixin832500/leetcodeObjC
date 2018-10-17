//
//  30-SubstringWithConcatenationOfAllWords.m
//  leetcodeObjC
//
//  Created by lx on 7/24/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "30-SubstringWithConcatenationOfAllWords.h"

@implementation Solution30 : NSObject
- (NSArray *) findSubstring: (NSString *)s : (NSArray *) words
{
    NSMutableArray * res = [NSMutableArray array];
    if(s.length == 0 || [words count] == 0) return res;
    NSInteger n = [words count];
    NSString *value = (NSString *)words[0];
    NSInteger m = value.length;
    
    NSMutableDictionary<NSString*, NSNumber*> *m1 = [[NSMutableDictionary alloc] init];
    
    for(NSInteger i = 0; i< [words count]; i++){
        NSString *curKey = words[i];
        NSNumber *cur = m1[curKey];
        if(cur != nil){
            cur = [NSNumber numberWithInt: [cur intValue] + 1];
            m1[curKey] = cur;
        }else{
            NSNumber *val = [NSNumber numberWithInt: 1];
            m1[curKey] = val;
        }
    }
    
    for(NSInteger i = 0; i<= s.length - n * m; ++i){
        NSMutableDictionary<NSString*, NSNumber*> *m2 = [[NSMutableDictionary alloc] init];
        NSInteger j;
        for(j = 0; j < n; ++j){
            NSString *t = [s substringWithRange: NSMakeRange( i + j*m, m)];
            if(m1[t] == nil) break;
            
            NSNumber *cur = m2[t];
            if(cur != nil){
                cur = [NSNumber numberWithInt: [cur intValue] + 1];
                m2[t] = cur;
            }else{
                NSNumber *val = [NSNumber numberWithInt: 1];
                m2[t] = val;
            }
            
            if(m2[t] > m1[t]) break;
        }
        if(j == n) [res addObject: @(i)];
    }
    
    return [res copy];
    
}
@end
