//
//  longestValidParentheseTest.m
//  leetcodeObjC
//
//  Created by lx on 8/12/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "32-LongestValidParentheses.h"

@interface longestValidParentheseTest : XCTestCase
{
    @private
    Solution32 *s;
}

@end


@implementation longestValidParentheseTest

- (void)setUp {
    [super setUp];
    s = [[Solution32 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testLongestValidParenthese1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *str = @"(()";
    NSInteger ret = [s lognestValidParentheses:str];
    XCTAssertEqual(ret, 2, @"The longest Valid Parenthese is found");
}

- (void)testLongestValidParenthese2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *str = @")()())";
    NSInteger ret = [s lognestValidParentheses:str];
    XCTAssertEqual(ret, 4, @"The longest Valid Parenthese is found");
}
@end
