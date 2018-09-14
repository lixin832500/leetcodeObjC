//
//  medianofTwoSortedArrayTest.m
//  leetcodeObjC
//
//  Created by lx on 6/17/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "4-medianOfTwoSortedArrays.h"

@interface medianOfTwoSortedArrayTest : XCTestCase
{
@private
    Solution4 *s;
}

@end

@implementation medianOfTwoSortedArrayTest

- (void)setUp {
    [super setUp];
    s = [[Solution4 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testFindMedianSortedArrays1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *array1 = [NSArray arrayWithObjects:@6, @37, @89, @150, nil];
    NSArray *array2 = [NSArray arrayWithObjects:@4, @56, @79, @230, nil];
    
    NSNumber *result = [s findMedianSortedArrays:array1 :array2];
    
    XCTAssertEqual([result doubleValue], 67.5, @"the median of the two array is found");
}

- (void)testFindMedianSortedArrays2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *array1 = [NSArray arrayWithObjects:@6, @37, @89, @150, nil];
    NSArray *array2 = [NSArray arrayWithObjects:@4, @56, @79, nil];
    
    NSNumber *result = [s findMedianSortedArrays:array1 :array2];
    
    XCTAssertEqual([result doubleValue], 56, @"the median of the two array is found");
}


@end
