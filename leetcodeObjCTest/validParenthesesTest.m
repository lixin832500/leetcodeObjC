//
//  validParenthesesTest.m
//  leetcodeObjC
//
//  Created by lx on 7/6/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "20-ValidParentheses.h"

@interface validParenthesesTest : XCTestCase
{
    @private
    Solution20 *s;
}
@end

@implementation validParenthesesTest

- (void)setUp {
    [super setUp];
    s = [[Solution20 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testIsValid1 {
    NSString *str = @"()";
    BOOL result = [s isValid:str];
    XCTAssertTrue(result, "the string is valid parentheses");
}

- (void)testIsValid2 {
    NSString *str = @"()[]{}";
    BOOL result = [s isValid:str];
    XCTAssertTrue(result, "the string is valid parentheses");
}

- (void)testIsValid3 {
    NSString *str = @"(]";
    BOOL result = [s isValid:str];
    XCTAssertFalse(result, "the string is valid parentheses");
}

- (void)testIsValid4 {
    NSString *str = @"([)]";
    BOOL result = [s isValid:str];
    XCTAssertFalse(result, "the string is valid parentheses");
}

- (void)testIsValid5 {
    NSString *str = @"{[]}";
    BOOL result = [s isValid:str];
    XCTAssertTrue(result, "the string is valid parentheses");
}

@end
