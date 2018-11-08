//
//  countAndSayTest.m
//  leetcodeObjC
//
//  Created by lx on 8/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "38-CountAndSay.h"

@interface countAndSayTest : XCTestCase
{
    @private
    Solution38 *s;
}
@end

@implementation countAndSayTest

- (void)setUp {
    [super setUp];
    s = [[Solution38 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testCountAndSay1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *res = [s countAndSay: 1];
    XCTAssertEqual([res isEqualToString:@"1"], TRUE, @"the result is right");
}

- (void)testCountAndSay2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *res = [s countAndSay: 2];
    XCTAssertEqual([res isEqualToString:@"11"], TRUE, @"the result is right");
    
}

- (void)testCountAndSay3 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *res = [s countAndSay: 3];
    XCTAssertEqual([res isEqualToString:@"21"], TRUE, @"the result is right");
    
}

- (void)testCountAndSay4 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *res = [s countAndSay: 4];
    XCTAssertEqual([res isEqualToString:@"1211"], TRUE, @"the result is right");
    
}

- (void)testCountAndSay5 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *res = [s countAndSay: 5];
    XCTAssertEqual([res isEqualToString:@"111221"], TRUE, @"the result is right");
    
}


@end
