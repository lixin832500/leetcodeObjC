//
//  8-StringToInteger.m
//  leetcodeObjC
//
//  Created by lx on 6/15/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "8-StringToInteger.h"

@implementation Solution8: NSObject
- (NSInteger) myAtoi: (NSString*) str
{
    NSInteger index = 0;
    while([str characterAtIndex: index] == ' ') index++;
    int flag = 1;
    if([str characterAtIndex: index] == '-'){
        index++;
        flag= -1;
    }else if([str characterAtIndex: index] == '+'){
        index++;
    }
    
    NSInteger res = 0;
    while(index < str.length){
        if([str characterAtIndex: index] <'0' || [str characterAtIndex: index] >'9'){
            return flag*res;
        }
        int digit=[str characterAtIndex: index] -'0';
        if(flag==1 && res*10.0+digit>INT_MAX){
            return INT_MAX;
        }else if(flag==-1 && -(res*10.0+digit)<INT_MIN){
            return INT_MIN;
        }
        res = res*10+digit;
        index++;
    }
    
    return flag*res;
    
}

@end
