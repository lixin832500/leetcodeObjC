//
//  longestSubstringWithoutRepeatingCharactersTest.m
//  leetcodeObjC
//
//  Created by lx on 3/20/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import"3-LongestSubstringWithoutRepeatingCharacters.h"

@interface longestSubstringWithoutRepeatingCharactersTest : XCTestCase
{
@private
    Solution3 *s;
}
@end

@implementation longestSubstringWithoutRepeatingCharactersTest

- (void)setUp {
    [super setUp];
    s = [[Solution3 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testLengthOfLongestSubstring {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *string = @"bbbbb";
    NSInteger result = [s lengthOfLongestSubstring:string];
    XCTAssertEqual(result, 1, @"the length of lognest substring is 1");

}

@end
