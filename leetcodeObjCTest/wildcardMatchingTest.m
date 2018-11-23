//
//  wildcardMatchingTest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "44-WildcardMatching.h"

@interface wildcardMatchingTest : XCTestCase
{
@private
    Solution44 *s;
}
@end

@implementation wildcardMatchingTest

- (void)setUp {
    [super setUp];
    s = [[Solution44 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testIsMatch1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *ss = @"aa",*p =  @"a";
    BOOL result = [s isMatch: ss :p];
    XCTAssertFalse(result, @"the result is NO");
}

- (void)testIsMatch2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *ss = @"aa",*p =  @"*";
    BOOL result = [s isMatch: ss :p];
    XCTAssertTrue(result, @"the result is YES");
}

- (void)testIsMatch3 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *ss = @"cb",*p =  @"?a";
    BOOL result = [s isMatch: ss :p];
    XCTAssertFalse(result, @"the result is NO");
}

- (void)testIsMatch4 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *ss = @"adceb",*p =  @"*a*b";
    BOOL result = [s isMatch: ss :p];
    XCTAssertTrue(result, @"the result is YES");
}

- (void)testIsMatch5 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *ss = @"acdcb",*p =  @"a*c?b";
    BOOL result = [s isMatch: ss :p];
    XCTAssertFalse(result, @"the result is NO");
}

@end
