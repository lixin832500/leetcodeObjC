//
//  searchInsertPostionTest.m
//  leetcodeObjC
//
//  Created by lx on 8/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "35-SearchInsertPosition.h"

@interface searchInsertPostionTest : XCTestCase
{
    @private
    Solution35 *s;
}
@end

@implementation searchInsertPostionTest

- (void)setUp {
    [super setUp];
    s = [[Solution35 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testSearchInsert1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@1, @3, @5, @6];
    NSInteger target = 5;
    NSInteger ret = [s searchInsert:nums: target];
    XCTAssertEqual(ret, 2, @"the searching result is correct");
}

- (void)testSearchInsert2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@1, @3, @5, @6];
    NSInteger target = 2;
    NSInteger ret = [s searchInsert:nums: target];
    XCTAssertEqual(ret, 1, @"the searching result is correct");
}

- (void)testSearchInsert3 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@1, @3, @5, @6];
    NSInteger target = 7;
    NSInteger ret = [s searchInsert:nums: target];
    XCTAssertEqual(ret, 4, @"the searching result is correct");
}

- (void)testSearchInsert4 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@1, @3, @5, @6];
    NSInteger target = 0;
    NSInteger ret = [s searchInsert:nums: target];
    XCTAssertEqual(ret, 0, @"the searching result is correct");
}


@end
