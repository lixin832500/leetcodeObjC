//
//  4-MedianofTwoSortedArrays.m
//  leetcodeObjC
//
//  Created by lx on 4/5/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "4-MedianofTwoSortedArrays.h"

@implementation Solution4: NSObject
- (NSNumber *)findMedianSortedArrays: (NSArray *) nums1 : (NSArray *) nums2
{
    NSInteger len1 = nums1.count;
    NSInteger len2 = nums2.count;
    NSInteger len = len1 + len2;
    
    if(len % 2 == 0){
        return [NSNumber numberWithDouble:([[self findKth: nums1: nums2: 0: len1: 0: len2: (len/2)] floatValue]+
        [[self findKth: nums1: nums2: 0: len1: 0: len2: (len/2 + 1)] floatValue]) / 2];
    }else{
        return [self findKth: nums1: nums2: 0: len1: 0: len2: len/2 + 1];
    }
}

- (NSNumber *) findKth: (NSArray *) nums1
                      : (NSArray *) nums2
                      : (NSInteger) start1
                      : (NSInteger) len1
                      : (NSInteger) start2
                      : (NSInteger) len2
                      : (NSInteger) k
{
    
    if(len1 > len2){
        return [self findKth: nums2: nums1: start2: len2: start1: len1: k];
    }
    
    if(len1 == 0){
        return [nums2 objectAtIndex: start2+k-1];
    }
    
    if(k == 1){
        return MIN([nums1 objectAtIndex: start1], [nums2 objectAtIndex: start2]);
    }
    
    NSInteger p1 = MIN(k/2, len1);
    NSInteger p2 = k - p1;
    if([nums1 objectAtIndex: start1 + p1 - 1] > [nums2 objectAtIndex: start2 + p2 - 1]){
        return [self findKth: nums1: nums2: start1: len1: start2+p2: len2-p2: k-p2];
    }else if([nums1 objectAtIndex: start1 + p1 - 1] < [nums2 objectAtIndex: start2 + p2 - 1]){
        return [self findKth: nums1: nums2: start1+p1: len1-p1: start2: len2: k-p1];
    }else{
        return [nums1 objectAtIndex: start1 + p1 - 1];
    }
    
}

@end
