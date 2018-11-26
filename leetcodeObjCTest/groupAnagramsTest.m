//
//  groupAnagramsTest.m
//  leetcodeObjC
//
//  Created by lx on 9/4/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "49-GroupAnagrams.h"

@interface groupAnagramsTest : XCTestCase
{
@private
    Solution49 *s;
}
@end

@implementation groupAnagramsTest

- (void)setUp {
    [super setUp];
    s = [[Solution49 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testGroupAnagrams {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *strs = @[@"eat", @"tea", @"tan", @"ate", @"nat", @"bat"];
    NSArray *result = [s groupAnagrams:strs];

    NSArray *actual = @[@[@"eat", @"tea", @"ate"],@[@"tan", @"nat"], @[@"bat"]];
    XCTAssertEqual([result isEqualToArray:actual], YES, @"the result is right");
}

@end
