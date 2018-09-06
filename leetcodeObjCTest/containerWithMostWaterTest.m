//
//  containerWithMostWaterTest.m
//  leetcodeObjC
//
//  Created by lx on 3/23/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "11-ContainerWithMostWater.h"

@interface containerWithMostWaterTest : XCTestCase
{
@private
    Solution11 *s;
}
@end

@implementation containerWithMostWaterTest

- (void)setUp {
    [super setUp];
    s = [[Solution11 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMaxArea {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *intArray = @[@1, @8, @6, @2, @5, @4, @8, @3, @7];
    NSNumber *ret = [s maxArea:intArray];
    XCTAssertEqual([ret longValue], 49, @"the max area is 49");

}


@end
