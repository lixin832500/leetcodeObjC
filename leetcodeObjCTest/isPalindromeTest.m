//
//  isPalindromeTest.m
//  leetcodeObjC
//
//  Created by lx on 6/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "9-PalindromeNumber.h"

@interface isPalindromeTest : XCTestCase
{
@private
    Solution9 *s;
}
@end


@implementation isPalindromeTest

- (void)setUp
{
    [super setUp];
    s = [[Solution9 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testIsPalindrome1
{
    NSInteger value = 42;
    BOOL result = [s isPalindrome: value];
    XCTAssertEqual(result, NO, @"the value is not palindrome");
}

- (void)testIsPalindrome2
{
    NSInteger value = 121;
    BOOL result = [s isPalindrome: value];
    XCTAssertEqual(result, YES, @"the value is not palindrome");
}
@end
