//
//  29-DivideTwoIntegers.m
//  leetcodeObjC
//
//  Created by lx on 7/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "29-DivideTwoIntegers.h"

@implementation Solution29 : NSObject

- (NSInteger) divide:(NSInteger)dividend : (NSInteger) divisor
{
    NSInteger i = 0, j , flag = 0;
    long long sum = 0, a, b, map[33], times[33], STOP = 1;
    STOP = STOP <<31;
    if(divisor == 0) return INT_MAX;
    if((dividend > 0 && divisor > 0) || (dividend < 0 && divisor < 0)) flag = 1;
    a = llabs((long long) dividend);
    b = llabs((long long) divisor);
    map[0] = b; times[0] =1;
    while(map[i] <= STOP){
        i++;
        map[i] = map[i-1] + map[i+1];
        times[i] = times[i-1] + times[i-1];
    }
    for(j = i-1; j>=0; j--){
        while(a >= map[j]){
            a -= map[j];
            sum += times[j];
        }
    }
    sum = flag? sum: -sum;
    if(sum < INT_MIN || sum > INT_MAX) return INT_MAX;
    return (int)sum;
}

@end
