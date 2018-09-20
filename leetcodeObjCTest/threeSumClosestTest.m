//
//  threeSumClosestTest.m
//  leetcodeObjC
//
//  Created by lx on 6/28/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "16-ThreeSumClosest.h"

@interface threeSumClosestTest : XCTestCase
{
@private
    Solution16 *s;
}
@end

@implementation threeSumClosestTest

- (void)setUp {
    [super setUp];
    s = [[Solution16 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testThreeSumClosest {
    // This is an example of a functional test case.
    NSArray *numArray = @[@-1,@2,@1, @-4];
    NSInteger target = 1;
    NSInteger ret = [s threeSumClost:numArray : target];
    
    XCTAssertEqual(ret, 2, @"the number is equal to 2");
    // XCTAssert(YES, @"Pass");
}

@end
