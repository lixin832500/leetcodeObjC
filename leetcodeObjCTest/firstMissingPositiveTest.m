//
//  firstMissingPositiveTest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "41-FirstMissingPositive.h"

@interface firstMissingPositiveTest : XCTestCase
{
@private
    Solution41 *s;
}
@end

@implementation firstMissingPositiveTest

- (void)setUp {
    [super setUp];
    s = [[Solution41 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testFirstMissingPositive1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@1, @2, @0];
    NSInteger actual = 3;
    NSInteger result = [s firstMissingPositive:nums];
    XCTAssertEqual(result, actual, @"the result is right");
}

- (void)testFirstMissingPositive2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@3, @4, @(-1), @1];
    NSInteger actual = 2;
    NSInteger result = [s firstMissingPositive:nums];
    XCTAssertEqual(result, actual, @"the result is right");
}

- (void)testFirstMissingPositive3 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@7, @8, @9, @11, @12];
    NSInteger actual = 1;
    NSInteger result = [s firstMissingPositive:nums];
    XCTAssertEqual(result, actual, @"the result is right");
}

@end
