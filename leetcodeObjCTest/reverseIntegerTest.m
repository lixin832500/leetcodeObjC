//
//  reverseIntegerTest.m
//  leetcodeObjC
//
//  Created by lx on 6/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "7-ReverseInteger.h"

@interface reverseIntegerTest : XCTestCase
{
@private
    Solution7 *s;
}
@end

@implementation reverseIntegerTest

- (void)setUp {
    [super setUp];
    s = [[Solution7 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testReverse1{
    NSInteger value = 123;
    NSInteger result = [s reverse:value];
    XCTAssertEqual(result, 321, @"the result is right");
}

- (void)testReverse2{
    NSInteger value = -123;
    NSInteger result = [s reverse:value];
    XCTAssertEqual(result, -321, @"the result is right");
}

- (void)testReverse4{
    NSInteger value = 120;
    NSInteger result = [s reverse:value];
    XCTAssertEqual(result, 21, @"the result is right");
}


@end
