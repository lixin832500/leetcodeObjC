//
//  findFirstAndLastPositionOfElementInSortedArrayTest.m
//  leetcodeObjC
//
//  Created by lx on 8/15/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "34-FindFirstAndLastPositionOfElementInSortedArray.h"

@interface findFirstAndLastPositionOfElementInSortedArrayTest : XCTestCase
{
@private
    Solution34 *s;
}
@end

@implementation findFirstAndLastPositionOfElementInSortedArrayTest

- (void)setUp {
    [super setUp];
    s = [[Solution34 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testSearchRange1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums1 = @[@5, @7, @7, @8, @8, @10];
    NSInteger target = 8;
    NSArray *ret = [s searchRange: nums1 : target];
    NSArray *actual = @[@3, @4];
    XCTAssertTrue([ret isEqualToArray: actual], @"the searching result is correct");
}

- (void)testSearchRange2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums1 = @[@5, @7, @7, @8, @8, @10];
    NSInteger target = 6;
    NSArray *ret = [s searchRange: nums1 : target];
    NSArray *actual = @[@-1, @-1];
    XCTAssertTrue([ret isEqualToArray: actual], @"the searching result is correct");
}

@end
