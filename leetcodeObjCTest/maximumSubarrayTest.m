//
//  maximumSubarrayTest.m
//  leetcodeObjC
//
//  Created by lx on 9/7/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "53-MaximumSubarray.h"

@interface maximumSubarrayTest : XCTestCase
{
@private
    Solution53 *s;
}
@end

@implementation maximumSubarrayTest

- (void)setUp {
    [super setUp];
    s = [[Solution53 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMaxSubArray {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray* nums = @[@(-2), @1, @(-3), @4, @(-1), @2, @1, @(-5), @4];
    NSInteger result = [s maxSubArray:nums];
    NSInteger actual = 6;
    XCTAssertEqual(result, actual, @"the result is right");
}

@end
