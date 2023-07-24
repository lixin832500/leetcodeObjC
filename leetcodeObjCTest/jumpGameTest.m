//
//  JumpGameTest.m
//  leetcodeObjCTest
//
//  Created by Xin Li on 7/24/23.
//  Copyright © 2023 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "55-JumpGame.h"

@interface jumpGameTest : XCTestCase
{
@private
    Solution55 *s;
}
@end

@implementation jumpGameTest
- (void)setUp {
    [super setUp];
    s = [[Solution55 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testJumpGame {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
//    NSArray *nums = @[@[@1, @2, @3], @[@4, @5, @6], @[@7, @8, @9]];
//    NSArray* actual = @[@1, @2, @3, @6, @9, @8, @7, @4, @5];
//    NSArray* result = [s spiralOrder:nums];
//
//    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}
@end
