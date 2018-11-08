//
//  validSudokuTest.m
//  leetcodeObjC
//
//  Created by lx on 8/16/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "36-ValidSudoku.h"

@interface validSudokuTest : XCTestCase
{
    @private
    Solution36 *s;
}
@end

@implementation validSudokuTest

- (void)setUp {
    [super setUp];
    s = [[Solution36 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}


- (void)testIsValidSudoku1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *input =  @[@[@"5",@"3",@".",@".",@"7",@".",@".",@".",@"."],
                        @[@"6",@".",@".",@"1",@"9",@"5",@".",@".",@"."],
                        @[@".",@"9",@"8",@".",@".",@".",@".",@"6",@"."],
                        @[@"8",@".",@".",@".",@"6",@".",@".",@".",@"3"],
                        @[@"4",@".",@".",@"8",@".",@"3",@".",@".",@"1"],
                        @[@"7",@".",@".",@".",@"2",@".",@".",@".",@"6"],
                        @[@".",@"6",@".",@".",@".",@".",@"2",@"8",@"."],
                        @[@".",@".",@".",@"4",@"1",@"9",@".",@".",@"5"],
                        @[@".",@".",@".",@".",@"8",@".",@".",@"7",@"9"]];
    BOOL result = [s isValidSudoku: input];
    XCTAssertTrue(result, @"the sudoku is valid");
}

- (void)testIsValidSudoku2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *input =  @[@[@"8",@"3",@".",@".",@"7",@".",@".",@".",@"."],
                        @[@"6",@".",@".",@"1",@"9",@"5",@".",@".",@"."],
                        @[@".",@"9",@"8",@".",@".",@".",@".",@"6",@"."],
                        @[@"8",@".",@".",@".",@"6",@".",@".",@".",@"3"],
                        @[@"4",@".",@".",@"8",@".",@"3",@".",@".",@"1"],
                        @[@"7",@".",@".",@".",@"2",@".",@".",@".",@"6"],
                        @[@".",@"6",@".",@".",@".",@".",@"2",@"8",@"."],
                        @[@".",@".",@".",@"4",@"1",@"9",@".",@".",@"5"],
                        @[@".",@".",@".",@".",@"8",@".",@".",@"7",@"9"]];
    BOOL result = [s isValidSudoku: input];
    XCTAssertFalse(result, @"the sudoku is valid");
}

@end
