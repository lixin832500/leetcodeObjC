//
//  TwoSumTest.m
//  leetcode
//
//  Created by lx on 5/18/18.
//  Copyright © 2018 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "1-TwoSum.h"

@interface twoSumTest : XCTestCase

@end

@implementation twoSumTest
    Solution1 *s;

- (void)setUp {
    [super setUp];
    s = [[Solution1 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testTwoSum {
    // This is an example of a functional test case.
    NSArray *intArray = @[@55,@54,@77];
    NSNumber *target = @109;
    
    NSArray *indices = [s twoSum: intArray target: target];
    NSInteger value1 = [[indices objectAtIndex:0] intValue];
    NSInteger value2 = [[indices objectAtIndex:1] intValue];
    XCTAssertEqual(value1, 1, @"the number is equal to 65");
    XCTAssertEqual(value2, 2, @"the number is equal to 66");
    
   // XCTAssert(YES, @"Pass");
}

@end

