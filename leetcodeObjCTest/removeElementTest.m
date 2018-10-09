//
//  removeElementTest.m
//  leetcodeObjC
//
//  Created by lx on 7/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "27-RemoveElement.h"

@interface removeElementTest : XCTestCase
{
    @private
    Solution27 *s;
}
@end


@implementation removeElementTest

- (void)setUp {
    [super setUp];
    s = [[Solution27 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testRemoveElement1 {
    NSArray *nums = @[@3,@2,@2,@3];
    NSInteger result = [s removeElement: nums : 3];
    XCTAssertEqual(result, 2, @"the result is 2");
}

- (void)testRemoveElement2 {
    NSArray *nums = @[@0,@1,@2,@2,@3,@0,@4,@2];
    NSInteger result = [s removeElement: nums : 2];
    XCTAssertEqual(result, 5, @"the result is 5");
}

@end
