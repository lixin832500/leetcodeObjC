//
//  divideTwoIntegersTest.m
//  leetcodeObjC
//
//  Created by lx on 7/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "29-DivideTwoIntegers.h"

@interface divideTwoIntegersTest : XCTestCase
{
@private
    Solution29 *s;
}
@end


@implementation divideTwoIntegersTest

- (void)setUp {
    [super setUp];
    s = [[Solution29 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testDivide1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSInteger dividend = 10, divisor = 3;
    NSInteger result = [s divide:dividend :divisor];
    XCTAssertEqual(result, 3, @"the result is 3");
}

- (void)testDivide2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSInteger dividend = 7, divisor = -3;
    NSInteger result = [s divide:dividend :divisor];
    XCTAssertEqual(result, -2, @"the result is -2");
}

@end
