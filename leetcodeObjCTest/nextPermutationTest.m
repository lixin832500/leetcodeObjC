//
//  nextPermutationTest.m
//  leetcodeObjC
//
//  Created by lx on 8/11/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "31-NextPermutation.h"

@interface nextPermutationTest : XCTestCase
{

    @private
    Solution31 *s;
}
@end

@implementation nextPermutationTest

- (void)setUp {
    [super setUp];
    s = [[Solution31 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testNextPermutation1 {
    NSArray *nums = @[@1,@2,@3];
    NSArray *ret = [s nextPermutation:nums];
    NSArray *actual = @[@1,@3,@2];
    XCTAssertEqual([ret isEqualToArray:actual], YES, @"the result is correct");
}

- (void)testNextPermutation2 {
    NSArray *nums = @[@3,@2,@1];
    NSArray *ret = [s nextPermutation:nums];
    NSArray *actual = @[@1,@2,@3];
    XCTAssertEqual([ret isEqualToArray:actual], YES, @"the result is correct");
}

- (void)testNextPermutation3 {
    NSArray *nums = @[@1,@1,@5];
    NSArray *ret = [s nextPermutation:nums];
    NSArray *actual = @[@1,@5,@1];
    XCTAssertEqual([ret isEqualToArray:actual], YES, @"the result is correct");
}
@end
