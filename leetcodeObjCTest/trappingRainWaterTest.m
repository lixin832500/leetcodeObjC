//
//  trappingRainWaterTest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "42-TrappingRainWater.h"

@interface trappingRainWaterTest : XCTestCase
{
@private
    Solution42 *s;
}
@end

@implementation trappingRainWaterTest

- (void)setUp {
    [super setUp];
    s = [[Solution42 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testTrap {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@0, @1, @0, @2, @1, @0, @1, @3, @2, @1, @2, @1];
    NSInteger actual = 6;
    NSInteger result = [s Trap:nums];
    XCTAssertEqual(result, actual, @"the result is right");
}

@end
