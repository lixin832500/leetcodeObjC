//
//  threeSumTest.m
//  leetcodeObjC
//
//  Created by lx on 6/18/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "15-ThreeSum.h"


@interface threeSumTest : XCTestCase
{
@private
    Solution15 *s;
}
@end

@implementation threeSumTest

- (void)setUp {
    [super setUp];
    s = [[Solution15 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testThreeSum {
    // This is an example of a functional test case.
    NSArray *numArray = @[@5,@9,@-1,@2,@-4,@4];
    NSArray *indices = [s threeSum: numArray];
    
    NSArray *value = indices[0];
  
    XCTAssertEqual([value[0] intValue], -4, @"the number is equal to -4");
    XCTAssertEqual([value[1] intValue], -1, @"the number is equal to -1");
    XCTAssertEqual([value[2] intValue], 5, @"the number is equal to 5");
    // XCTAssert(YES, @"Pass");
}

@end
