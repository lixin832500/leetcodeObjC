//
//  permutationsTest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "46-Permutations.h"

@interface permutationsTest : XCTestCase
{
@private
    Solution46 *s;
}
@end

@implementation permutationsTest

- (void)setUp {
    [super setUp];
    s = [[Solution46 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testPermute {
    NSArray *nums = @[@1, @2, @3];
    NSArray *result = [s permute: nums];
    NSArray *actual = @[@[@1, @2, @3],@[@1, @3, @2], @[@2, @1, @3], @[@2, @3, @1], @[@3, @1, @2], @[@3, @2, @1]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}


@end
