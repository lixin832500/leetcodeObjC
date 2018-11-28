//
//  spiralMatrixTest.m
//  leetcodeObjC
//
//  Created by lx on 9/7/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "54-SpiralMatrix.h"

@interface spiralMatrixTest : XCTestCase
{
@private
    Solution54 *s;
}
@end

@implementation spiralMatrixTest
- (void)setUp {
    [super setUp];
    s = [[Solution54 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testSpiralOrder1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@[@1, @2, @3], @[@4, @5, @6], @[@7, @8, @9]];
    NSArray* actual = @[@1, @2, @3, @6, @9, @8, @7, @4, @5];
    NSArray* result = [s spiralOrder:nums];
    
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

- (void)testSpiralOrder2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *nums = @[@[@1, @2, @3, @4], @[@5, @6, @7, @8], @[@9, @10, @11, @12]];
    NSArray* actual = @[@1, @2, @3, @4, @8, @12, @11, @10, @9, @5, @6, @7];
    NSArray* result = [s spiralOrder:nums];
    
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end
