//
//  rotateImageTest.m
//  leetcodeObjC
//
//  Created by lx on 9/1/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "48-RotateImage.h"

@interface rotateImageTest : XCTestCase
{
@private
    Solution48 *s;
}
@end

@implementation rotateImageTest
- (void)setUp {
    [super setUp];
    s = [[Solution48 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testRotateImage1 {
    NSArray *matrix = @[@[@1, @2, @3],@[@4, @5, @6], @[@7, @8, @9]];
    NSArray *result = [s rotate: matrix];
    NSArray *actual = @[@[@7, @4, @1],@[@8, @5, @2], @[@9, @6, @3]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

- (void)testRotateImage2 {
    NSArray *matrix = @[@[@5, @1, @9, @11],@[@2, @4, @8, @10], @[@13, @3, @6, @7], @[@15, @14, @12, @16]];
    NSArray *result = [s rotate: matrix];
    NSArray *actual = @[@[@15, @13, @2, @5],@[@14, @3, @4, @1], @[@12, @6, @8, @9], @[@16, @7, @10, @11]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end
