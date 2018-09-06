//
//  zigzagConversionTest.m
//  leetcodeObjC
//
//  Created by lx on 6/14/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "6-ZigzagConversion.h"

@interface zigzagConversionTest : XCTestCase
{
    @private
    Solution6 *s;
}
@end

@implementation zigzagConversionTest

- (void)setUp {
    [super setUp];
    s = [[Solution6 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testZigzagConversion1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *string = @"PAYPALISHIRING";
    NSInteger nRow = 3;
    NSString *result = [s convert:string : nRow];
    XCTAssertEqual([result isEqualToString:@"PAHNAPLSIIGYIR"], TRUE, @"the conversion is correct");
}

- (void)testZigzagConversion2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *string = @"PAYPALISHIRING";
    NSInteger nRow = 4;
    NSString *result = [s convert:string : nRow];
    XCTAssertEqual([result isEqualToString:@"PINALSIGYAHRPI"], TRUE, @"the conversion is correct");
}
@end
