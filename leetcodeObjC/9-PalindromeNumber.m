//
//  9-PalindromeNumber.m
//  leetcodeObjC
//
//  Created by lx on 6/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "9-PalindromeNumber.h"

@implementation Solution9: NSObject
- (BOOL) isPalindrome: (NSInteger) x
{
    if(x < 0)
        return NO;
    
    int count = 1;
    while(x / count >= 10)
        count *= 10;
    
    while(x > 0){
        
        int left = x / count;
        int right = x % 10;
        
        if(left != right)
            return NO;
        else    {
            //remove the head and tail number
            x = (x % count) / 10;
            count /= 100;
        }
    }
    
    return YES;
}

@end
