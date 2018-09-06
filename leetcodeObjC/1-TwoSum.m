//
//  1-twoSum.m
//  leetcode
//
//  Created by lx on 9/26/17.
//  Copyright © 2017 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "1-TwoSum.h"

@implementation Solution1: NSObject
- (NSArray *)twoSum:(NSArray *)intArray
             target:(NSNumber *)target
{
    // use a hash to save searching time
    NSMutableDictionary *map = @{}.mutableCopy;
    
    for (NSInteger i=0; i<intArray.count; i++){
        
        // use objective c objects on all numbers so that they word with NSDictionay. Plain C does not work with NSDictionary
        NSNumber *currValue = (NSNumber *)[intArray objectAtIndex:i];
        NSNumber *diffValue = @([target integerValue] - [currValue integerValue]);
        NSNumber *diffIdx = [map objectForKey:diffValue];
        NSNumber *currIdx = @(i);
        
        if (diffIdx) {
            // find it, return index in hash first as it is smaller than current index
            return @[diffIdx, currIdx];
        }
        
        // no match, keep in hash
        [map setObject:currIdx forKey:currValue];
    };
    
    // did not find the target
    return nil;
}
@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSArray *intArray = @[@55,@66,@77];
//        NSNumber *target = @121;
//        Solution1 *s = [[Solution1 alloc] init];
//        NSArray *indices = [s twoSum: intArray target: target];
//        if (indices.count == 2)
//           NSLog(@"\n\n %s, found index1 = %@, index2 = %@, for target = %lu in array = %@",
//                  __func__, [indices objectAtIndex:0], [indices objectAtIndex:1], [target integerValue], intArray);
//        else
//            NSLog(@"\n\n %s, did not find the two sum!", __func__);
//    }
//    return 0;
//}

