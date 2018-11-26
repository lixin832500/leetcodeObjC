//
//  powTest.m
//  leetcodeObjC
//
//  Created by lx on 9/4/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "50-Pow.h"

@interface powTest : XCTestCase
{
@private
    Solution50 *s;
}
@end

@implementation powTest

- (void)setUp {
    [super setUp];
    s = [[Solution50 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMyPow1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    double x = 2.00000;
    int n = 10;
    double result = [s myPow:x : n];
    XCTAssertEqual(result, 1024.00000, @"the result is right");
}

- (void)testMyPow2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    double x = 2.10000;
    int n = 3;
    double result = [s myPow:x : n];
    XCTAssertEqual(result, 9.261000000000001, @"the result is right");
}

- (void)testMyPow3 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    double x = 2.00000;
    int n = -2;
    double result = [s myPow:x : n];
    XCTAssertEqual(result, 0.25, @"the result is right");
}

@end
