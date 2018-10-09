//
//  28-ImplementStrstr.m
//  leetcodeObjC
//
//  Created by lx on 7/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "28-ImplementStrstr.h"

@implementation Solution28 : NSObject
-(NSInteger) strStr: (NSString *) haystack : (NSString *) needle;
{
    if(needle.length ==0) return 0;
    
    if(needle.length > haystack.length) return -1;
    
    if([needle isEqualToString: haystack]) return 0;
    
    for(NSInteger i =0; i<= haystack.length - needle.length; i++){
        BOOL find = YES;
        
        for(NSInteger j = 0; j < needle.length; j++){
            NSString * hchar = [NSString stringWithFormat:@"%c", [haystack characterAtIndex:i+j]];
            NSString * nchar = [NSString stringWithFormat:@"%c", [needle characterAtIndex:j]];
            
            if(![hchar isEqualToString: nchar]){
                find = NO;
                break;
            }
        }
        
        if(find) return i;
    }
    
    return -1;
}

@end
