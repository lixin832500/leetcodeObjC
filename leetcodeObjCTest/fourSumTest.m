//
//  fourSumTest.m
//  leetcodeObjC
//
//  Created by lx on 7/2/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "18-FourSum.h"

@interface fourSumTest : XCTestCase
{
@private
    Solution18 *s;
}
@end

@implementation fourSumTest

- (void)setUp {
    [super setUp];
    s = [[Solution18 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testFourSum {
    // This is an example of a functional test case.
    NSArray *numArray = @[@1, @0, @-1, @0, @-2, @2];
    NSInteger target = 0;
    
    NSArray *ret = [s fourSum: numArray : target];

    NSArray *value1 = ret[0];
    NSArray *value2 = ret[1];
    NSArray *value3 = ret[2];
    
    XCTAssertEqual([value1[0] intValue], -2, @"the number is equal to -2");
    XCTAssertEqual([value1[1] intValue], -1, @"the number is equal to -1");
    XCTAssertEqual([value1[2] intValue], 1, @"the number is equal to 1");
    XCTAssertEqual([value1[3] intValue], 2, @"the number is equal to 2");
    
    XCTAssertEqual([value2[0] intValue], -2, @"the number is equal to -2");
    XCTAssertEqual([value2[1] intValue], 0, @"the number is equal to 0");
    XCTAssertEqual([value2[2] intValue], 0, @"the number is equal to 0");
    XCTAssertEqual([value2[3] intValue], 2, @"the number is equal to 2");
    
    XCTAssertEqual([value3[0] intValue], -1, @"the number is equal to -1");
    XCTAssertEqual([value3[1] intValue], 0, @"the number is equal to 0");
    XCTAssertEqual([value3[2] intValue], 0, @"the number is equal to 0");
    XCTAssertEqual([value3[3] intValue], 1, @"the number is equal to 1");
    // XCTAssert(YES, @"Pass");
}

@end
