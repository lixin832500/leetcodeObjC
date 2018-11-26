//
//  50-Pow.m
//  leetcodeObjC
//
//  Created by lx on 8/26/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "50-Pow.h"

@implementation Solution50 : NSObject
- (double) myPow: (double) x: (int) n
{
    if(n == 0) return 1.0;
    double half = pow(x, n/2);
    if(n %2 == 0){
        return half * half;
    }else if(n > 0){
        return half * half * x;
    }else{
        return half/x * half;
    }
}
@end
