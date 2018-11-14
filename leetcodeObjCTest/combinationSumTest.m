//
//  combinationSumTest.m
//  leetcodeObjC
//
//  Created by lx on 8/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "39-CombinationSum.h"

@interface combinationSumTest : XCTestCase
{
    @private
    Solution39 *s;
}
@end

@implementation combinationSumTest

- (void)setUp {
    [super setUp];
    s = [[Solution39 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testCombinationSum1 {
    NSArray *candidates = @[@2, @3, @6, @7];
    NSInteger target = 7;
    NSArray *result = [s combinationSum: candidates target: target];
    NSLog(@"result: %@",result);
    NSArray *actual = @[@[@2, @2, @3],@[@7]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

- (void)testCombinationSum2 {
    NSArray *candidates = @[@2, @3, @5];
    NSInteger target = 8;
    NSArray *result = [s combinationSum: candidates target: target];
    NSArray *actual = @[@[@2, @2, @2, @2], @[@2, @3, @3], @[@3, @5]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end
