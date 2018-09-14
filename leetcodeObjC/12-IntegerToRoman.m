//
//  12-IntegerToRoman.m
//  leetcodeObjC
//
//  Created by lx on 6/23/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "12-IntegerToRoman.h"

@implementation Solution12 : NSObject
- (NSString *)intToRoman : (NSNumber*) num
{
    NSMutableString *res = [NSMutableString stringWithString:@""];
    
    NSArray *symbol = @[@"M",@"CM",@"D",@"CD",@"C",@"XC",@"L",@"XL",@"X",@"IX",@"V",@"IV",@"I"];
    NSArray *value = @[@1000, @900,@500,@400,@100,@90,@50,@40,@10,@9,@5,@4,@1];
    for(int i = 0; [num intValue] != 0; ++i){
        while([num intValue] >= [value[i] intValue]){
            num = @([num intValue] - [value[i] intValue]);
            [res appendString:symbol[i]];
        }
    }
    
    return [NSMutableString stringWithString: res];
}
@end
