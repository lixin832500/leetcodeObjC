//
//  findMedianSortedArraysTest.m
//  leetcodeObjC
//
//  Created by lx on 4/7/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "4-MedianofTwoSortedArrays.h"

@interface findMedianSortedArraysTest : XCTestCase
{
@private
    Solution4 *s;
}
@end


@implementation findMedianSortedArraysTest

- (void)setUp {
    [super setUp];
    s = [[Solution4 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}
    
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testFindMedianSortedArrays1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSArray *nums1 = @[@1,@3];
    NSArray *nums2 = @[@2];
    
    NSNumber *midianValue = [s findMedianSortedArrays:nums1 :nums2];
    XCTAssertEqual([midianValue doubleValue], 2.0, @"the midian value is 2");
}

- (void)testFindMedianSortedArrays2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums1 = @[@1,@2];
    NSArray *nums2 = @[@3,@4];
    
    NSNumber *midianValue = [s findMedianSortedArrays:nums1 :nums2];
    XCTAssertEqual([midianValue doubleValue], 2.5, @"the midian value is 2");
}

@end
