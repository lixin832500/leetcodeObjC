//
//  49-GroupAnagrams.m
//  leetcodeObjC
//
//  Created by lx on 8/25/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "49-GroupAnagrams.h"
#import "sort-string.m"

@implementation Solution49 : NSObject
-(NSArray*) groupAnagrams: (NSArray*) strs
{
    NSMutableArray *res = [[NSMutableArray alloc] init];
    NSMutableDictionary<NSString *, NSMutableArray *> *m = [[NSMutableDictionary alloc] init];
    for(id str in strs){
        NSString* t = str;
     
        NSString* tmpStr = [t sortStringAlphabetically:t];
        NSMutableArray *value = m[tmpStr];
        if(value != nil){
            [value addObject: [NSString stringWithString: t]];
        }else{
            value = [NSMutableArray arrayWithObjects: t, nil];
        }
        
        m[tmpStr] = value;
    }

    for(id key in m){
        id value = [m objectForKey: key];
        [res addObject: value];
    }
    return [res copy];
    
}
@end
