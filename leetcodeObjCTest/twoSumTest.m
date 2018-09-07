//
//  twoSumTest.m
//  leetcodeObjC
//
//  Created by lx on 3/19/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "1-TwoSum.h"

@interface twoSumTest : XCTestCase
{
    @private
    Solution1 *s;
}
@end

@implementation twoSumTest

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
    XCTAssertEqual(value1, 0, @"the number is equal to 65");
    XCTAssertEqual(value2, 1, @"the number is equal to 66");
    
    // XCTAssert(YES, @"Pass");
}

@end
