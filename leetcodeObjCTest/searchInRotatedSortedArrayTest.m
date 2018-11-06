//
//  searchInRotatedSortedArrayTest.m
//  leetcodeObjC
//
//  Created by lx on 8/14/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "33-SearchInRotatedSortedArray.h"

@interface searchInRotatedSortedArrayTest : XCTestCase
{
    @private
    Solution33 *s;
}
@end

@implementation searchInRotatedSortedArrayTest

- (void)setUp {
    [super setUp];
    s = [[Solution33 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testSearch1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums1 = @[@4, @5, @6, @7, @0, @1, @2];
    NSInteger target = 0;
    NSInteger ret = [s search: nums1: target];
    XCTAssertEqual(ret, 4, @"the searching result is correct");
}

- (void)testSearch2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums1 = @[@4, @5, @6, @7, @0, @1, @2];
    NSInteger target = 3;
    NSInteger ret = [s search: nums1: target];
    XCTAssertEqual(ret, -1, @"the searching result is correct");
}

@end
