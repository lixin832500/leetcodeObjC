//
//  stringToInteger.m
//  leetcodeObjC
//
//  Created by lx on 6/15/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "8-stringToInteger.h"

@interface stringToIntegerTest : XCTestCase
{
    @private
    Solution8 *s;
}
@end

@implementation stringToIntegerTest

- (void)setUp {
    [super setUp];
    s = [[Solution8 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMyAtoi1{
    NSString *str = @"42";
    NSInteger result = [s myAtoi:str];
    XCTAssertEqual(result, 42, @"the string to integer is correct");
}

- (void)testMyAtoi2{
    NSString *str = @"   -42";
    NSInteger result = [s myAtoi:str];
    XCTAssertEqual(result, -42, @"the string to integer is correct");
}

- (void)testMyAtoi3{
    NSString *str = @"4193 with words";
    NSInteger result = [s myAtoi:str];
    XCTAssertEqual(result, 4193, @"the string to integer is correct");
}

- (void)testMyAtoi4{
    NSString *str = @"words and 987";
    NSInteger result = [s myAtoi:str];
    XCTAssertEqual(result, 0, @"the string to integer is correct");
}

- (void)testMyAtoi5{
    NSString *str = @"-91283472332";
    NSInteger result = [s myAtoi:str];
    XCTAssertEqual(result, -2147483648, @"the string to integer is correct");
}


@end
