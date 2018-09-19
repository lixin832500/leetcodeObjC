//
//  14-LongestCommonPrefix.m
//  leetcodeObjC
//
//  Created by lx on 6/27/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "14-LongestCommonPrefix.h"

@implementation Solution14 : NSObject
- (NSString *)longestCommonPrefix : (NSArray*) strs
{
    if(strs == nil || [strs count] ==0) return @"";
    if([strs count] ==1) return strs[0];
    
    NSMutableString* prefix = [NSMutableString stringWithString:@""];
    NSString *str0 = strs[0];
    NSInteger minLength = [str0 length];
    for(id str in strs){
        NSString *s = str;
        if([s length] < minLength){
            minLength = [s length];
        }
    }
    
    for(NSInteger i =0; i<minLength; i++){
        NSString* ichar = [NSString stringWithFormat:@"%c", [strs[0] characterAtIndex:i]];
        [prefix appendString: ichar];
        
        for(id str in strs){
            NSString *strInArray = str;
            NSString* ch = [NSString stringWithFormat:@"%c", [strInArray characterAtIndex:i]];
            
            if(![[prefix substringFromIndex:[prefix length] -1] isEqualToString: ch]){
                [prefix deleteCharactersInRange:NSMakeRange([prefix length] -1, 1)];
                return prefix;
            }
        }
        
    }
         
    return prefix;
}
@end
