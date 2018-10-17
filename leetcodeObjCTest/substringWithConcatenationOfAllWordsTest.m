//
//  substringWithConcatenationOfAllWordsTest.m
//  leetcodeObjC
//
//  Created by lx on 7/24/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "30-SubstringWithConcatenationOfAllWords.h"

@interface substringWithConcatenationOfAllWordsTest : XCTestCase
{
@private
    Solution30 *s;
}
@end

@implementation substringWithConcatenationOfAllWordsTest

- (void)setUp {
    [super setUp];
    s = [[Solution30 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}


- (void)testFindSubstring1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *str = @"barfoothefoobarman";
    NSArray *words = @[@"foo", @"bar"];
    NSArray * result = [s findSubstring:str :words];
    NSArray *actual = @[@0, @9];
    XCTAssertEqual([result isEqualToArray: actual], YES, @"the result is correct");
}

- (void)testFindSubstring2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *str = @"wordgoodstudentgoodword";
    NSArray *words = @[@"word", @"student"];
    NSArray * result = [s findSubstring:str :words];
    NSArray *actual = @[];
    XCTAssertEqual([result isEqualToArray: actual], YES, @"the result is correct");
}

@end
