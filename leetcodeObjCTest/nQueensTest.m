//
//  nQueensTest.m
//  leetcodeObjC
//
//  Created by lx on 9/5/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "51-NQueens.h"

@interface nQueensTest : XCTestCase
{
@private
    Solution51 *s;
}
@end

@implementation nQueensTest

- (void)setUp {
    [super setUp];
    s = [[Solution51 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testSolveNQueens {
    NSArray *result = [s solveNQueens: 4];
    NSLog(@"result: %@", result);
    NSArray *actual = @[@[@".", @"Q", @".", @"."],@[@".", @".", @".", @"Q"], @[@"Q", @".", @".", @"."], @[@".", @".", @"Q", @"."], @[@".", @".", @"Q", @"."], @[@"Q", @".", @".", @"."], @[@".", @".", @".", @"Q"], @[@".", @"Q", @".", @"."]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end
