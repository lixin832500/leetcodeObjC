//
//  removeDuplicatesFromSortedArrayTest.m
//  leetcodeObjC
//
//  Created by lx on 7/12/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "26-RemoveDuplicatesFromSortedArray.h"

@interface removeDuplicatesFromSortedArrayTest : XCTestCase
{
    @private
    Solution26 *s;
}
@end


@implementation removeDuplicatesFromSortedArrayTest

- (void)setUp {
    [super setUp];
    s = [[Solution26 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testRemoveDuplicates1 {
    NSArray *nums = @[@1,@1,@2];
    NSInteger result = [s removeDuplicate:nums];
    XCTAssertEqual(result, 2, @"the result is 2");
}

- (void)testRemoveDuplicates2 {
    NSArray *nums = @[@0,@0,@1,@1,@1,@2,@2,@3,@3,@4];
    NSInteger result = [s removeDuplicate:nums];
    XCTAssertEqual(result, 5, @"the result is 5");
}

@end
