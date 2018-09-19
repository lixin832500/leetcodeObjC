//
//  longestCommonPrefixTest.m
//  leetcodeObjC
//
//  Created by lx on 6/27/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "14-LongestCommonPrefix.h"

@interface longestCommonPrefixTest : XCTestCase
{
    @private
    Solution14 *s;
}
@end

@implementation longestCommonPrefixTest

- (void)setUp {
    [super setUp];
    s = [[Solution14 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}
   
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}
   
- (void)testLongestCommonPrefix1 {
    NSArray* strs = [[NSArray alloc] initWithObjects: @"flower", @"flow", @"flight", nil];
    NSString *result = [s longestCommonPrefix: strs];
    XCTAssertTrue([result isEqualToString:@"fl"], @"the longest common prefix is found");
}

- (void)testLongestCommonPrefix2 {
    NSArray* strs = [[NSArray alloc] initWithObjects: @"dog", @"racecar", @"car", nil];
    NSString *result = [s longestCommonPrefix: strs];
    XCTAssertTrue([result isEqualToString:@""], @"the longest common prefix is found");
}

@end
