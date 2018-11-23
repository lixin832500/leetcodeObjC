//
//  jumpGameIITest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "45-JumpGameII.h"

@interface jumpGameIITest : XCTestCase
{
@private
    Solution45 *s;
}
@end

@implementation jumpGameIITest

- (void)setUp {
    [super setUp];
    s = [[Solution45 alloc] init];
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
    NSArray *nums = @[@2, @3, @1, @1, @4];
    NSInteger actual = 2;
    NSInteger result = [s jump:nums];
    XCTAssertEqual(result, actual, @"the result is right");
}

@end
