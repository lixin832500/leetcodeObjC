//
//  combinationSumIITest.m
//  leetcodeObjC
//
//  Created by lx on 8/18/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "40-CombinationSumII.h"

@interface combinationSumIITest : XCTestCase
{
@private
    Solution40 *s;
}
@end

@implementation combinationSumIITest

- (void)setUp {
    [super setUp];
    s = [[Solution40 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testCombinationSum21 {
    NSArray *candidates = @[@10, @1, @2, @7, @6, @1, @5];
    NSInteger target = 8;
    NSArray *result = [s combinationSum2: candidates target: target];
    NSArray *actual = @[@[@1, @1, @6], @[@1, @2, @5], @[@1, @7], @[@2, @6]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

- (void)testCombinationSum22 {
    NSArray *candidates = @[@2, @5, @2, @1, @2];
    NSInteger target = 5;
    NSArray *result = [s combinationSum2: candidates target: target];
    NSArray *actual = @[@[@1, @2, @2], @[@5]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end

