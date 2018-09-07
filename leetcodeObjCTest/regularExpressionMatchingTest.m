//
//  regularExpressionMatchingTest.m
//  leetcodeObjC
//
//  Created by lx on 6/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "10-RegularExpressionMatching.h"

@interface regularExpressionMatchingTest : XCTestCase
{
@private
    Solution10 *s;
}
@end

@implementation regularExpressionMatchingTest

- (void)setUp {
    [super setUp];
    s = [[Solution10 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testIsMatch1 {
    NSString* source = @"aa";
    NSString* p = @"a";
    BOOL result = [s isMatch:source :p];
    XCTAssertEqual(result, NO, @"the pattern is matched");
}

- (void)testIsMatch2 {
    NSString* source = @"aa";
    NSString* p = @"a*";
    BOOL result = [s isMatch:source :p];
    XCTAssertEqual(result, YES, @"the pattern is matched");
}

- (void)testIsMatch3 {
    NSString* source = @"ab";
    NSString* p = @".*";
    BOOL result = [s isMatch:source :p];
    XCTAssertEqual(result, YES, @"the pattern is matched");
}

- (void)testIsMatch4 {
    NSString* source = @"aab";
    NSString* p = @"c*a*b";
    BOOL result = [s isMatch:source :p];
    XCTAssertEqual(result, YES, @"the pattern is matched");
}

- (void)testIsMatch5 {
    NSString* source = @"mississippi";
    NSString* p = @"mis*is*p*.";
    BOOL result = [s isMatch:source :p];
    XCTAssertEqual(result, NO, @"the pattern is matched");
}


@end
