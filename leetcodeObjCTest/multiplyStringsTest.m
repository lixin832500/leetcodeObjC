//
//  multiplyStringsTest.m
//  leetcodeObjC
//
//  Created by lx on 8/21/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "43-MultiplyStrings.h"

@interface multiplyStringsTest : XCTestCase
{
@private
    Solution43 *s;
}
@end

@implementation multiplyStringsTest

- (void)setUp {
    [super setUp];
    s = [[Solution43 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMultiply1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *num1 = @"2",*num2 =  @"3";
    NSString *result = [s multiply: num1 : num2];
    XCTAssertEqual([result isEqualToString: @"6"], YES, @"the result is 6");
}

- (void)testMultiply2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *num1 = @"123",*num2 =  @"456";
    NSString *result = [s multiply: num1 : num2];
    XCTAssertEqual([result isEqualToString: @"56088"], YES, @"the result is 6");
}
@end
