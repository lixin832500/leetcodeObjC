//
//  permutationsIITest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "47-PermutationsII.h"

@interface permutationsIITest : XCTestCase
{
@private
    Solution47 *s;
}
@end

@implementation permutationsIITest

- (void)setUp {
    [super setUp];
    s = [[Solution47 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testPermuteUnique {
    NSArray *nums = @[@1, @1, @2];
    NSArray *result = [s permuteUnique: nums];
    NSArray *actual = @[@[@1, @1, @2],@[@1, @2, @1], @[@2, @1, @1]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end
