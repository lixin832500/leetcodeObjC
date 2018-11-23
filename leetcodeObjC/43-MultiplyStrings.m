//
//  43-MultiplyStrings.m
//  leetcodeObjC
//
//  Created by lx on 8/21/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "43-MultiplyStrings.h"

@implementation Solution43 : NSObject
-(NSString*) multiply: (NSString*) nums1 : (NSString*) nums2;
{
    NSInteger len1 = nums1.length;
    NSInteger len2 = nums2.length;
    NSInteger len = len1 + len2 -2;
    NSMutableArray *tmpres = [[NSMutableArray alloc] initWithCapacity:len1 + len2];
    for(NSInteger i = 0; i < len1 + len2; i++){
        [tmpres insertObject:[NSNumber numberWithInt:0] atIndex:i];
    }
    
    for(NSInteger i = 0; i < len1; i++){
        for(NSInteger j = 0; j < len2; j++){
            NSInteger val = [tmpres[len - i - j] intValue];
            [tmpres replaceObjectAtIndex: len - i -j withObject: @(val + ([nums1 characterAtIndex: i] - '0') * ([nums2 characterAtIndex: j] - '0'))];
        }
    }
    //NSLog(@"array : %@", tmpres);
    
    NSInteger carry = 0;
    for(NSInteger i = 0; i < len1 + len2; i++){
        NSInteger val = [tmpres[i] intValue];
        val += carry;
        [tmpres replaceObjectAtIndex: i withObject: [NSNumber numberWithInt: val]];
        carry = [tmpres[i] intValue] / 10;
        val = [tmpres[i] intValue];
        [tmpres replaceObjectAtIndex: i withObject: [NSNumber numberWithInt:val % 10]];

    }

    NSInteger i = len +1;
    while([tmpres[i] intValue] == 0) i--;
    if(i< 0) return @"0";
    NSMutableString *res = [@"" mutableCopy];
    while(i >= 0){
        NSInteger val = [tmpres[i] intValue];
        [res appendString: [NSString stringWithFormat: @"%d", val + [@"0" intValue]]];
        i --;
    }
    return [res copy];
}
@end
