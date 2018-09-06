//
//  6-ZigzagConversion.m
//  leetcodeObjC
//
//  Created by lx on 6/10/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "6-ZigzagConversion.h"

@implementation Solution6: NSObject
- (NSString*) convert: (NSString *) s : (NSInteger) nRows
{
    if(nRows == 1) return s;
    
    NSMutableArray *res = [[NSMutableArray alloc] initWithCapacity: nRows];
    for(int i= 0; i < nRows; i++){
        NSMutableString *tmpString = [NSMutableString stringWithString:@""];
        [res setObject: tmpString atIndexedSubscript: i];
    }
    
    NSInteger i = 0, j, gap = nRows -2;
    
    while(i < s.length){
        for(j = 0; i < s.length && j < nRows; ++j){
            NSString * ichar = [NSString stringWithFormat:@"%c", [s characterAtIndex:i++]];
            NSMutableString *tmp = [res objectAtIndex:j];
            [tmp appendString:ichar];
            [res setObject: tmp atIndexedSubscript:j];
        }
        
        for(j = gap; i< s.length && j >0 ; --j){
            NSString * ichar = [NSString stringWithFormat:@"%c", [s characterAtIndex:i++]];
            NSMutableString *tmp = [res objectAtIndex:j];
            [tmp appendString:ichar];
            [res setObject: tmp atIndexedSubscript:j];
        }
    }
    
    NSMutableString * str = [NSMutableString stringWithString:@""];
    
    for(i = 0; i< nRows; ++i){
        [str appendString: [res objectAtIndex:i]];
    }
         
    return str;
    
}

@end
