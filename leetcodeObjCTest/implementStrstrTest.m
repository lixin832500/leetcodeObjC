//
//  implementStrstrTest.m
//  leetcodeObjC
//
//  Created by lx on 7/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "28-ImplementStrstr.h"

@interface implementStrstrTest : XCTestCase
{
    @private
    Solution28 *s;
}
@end

@implementation implementStrstrTest

- (void)setUp {
    [super setUp];
    s = [[Solution28 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testStrstr1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *haystack = @"hello";
    NSString *needle = @"ll";
    NSInteger result = [s strStr: haystack :needle];
    XCTAssertEqual(result, 2, @"the result is 2");

}

- (void)testStrstr2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *haystack = @"aaaaa";
    NSString *needle = @"bba";
    NSInteger result = [s strStr: haystack :needle];
    XCTAssertEqual(result, -1, @"the result is 2");
    
}

@end
