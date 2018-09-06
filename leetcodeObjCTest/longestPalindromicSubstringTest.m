//
//  longestPalindromicSubstringTest.m
//  leetcodeObjC
//
//  Created by lx on 4/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "5-LongestPalindromicSubstring.h"

@interface longestPalindromicSubstringTest : XCTestCase
{
@private
    Solution5 *s;
}
@end

@implementation longestPalindromicSubstringTest

- (void)setUp {
    [super setUp];
    s = [[Solution5 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testLongestPalindrome1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *string = @"bbbbb";
    NSString *result = [s longestPalindrome:string];
    XCTAssertEqual([result isEqualToString:@"bbbbb"], TRUE, @"the length of lognest substring is 'bbbbb'");
}

- (void)testLongestPalindrome2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *string = @"cbbd";
    NSString *result = [s longestPalindrome:string];
    XCTAssertEqual([result isEqualToString:@"bb"], TRUE, @"the length of lognest substring is 'bb'");
}

@end
