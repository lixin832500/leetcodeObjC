//
//  letterCombinationOfAPhoneNumberTest.m
//  leetcodeObjC
//
//  Created by lx on 6/30/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "17-LetterCombinationOfAPhoneNumber.h"

@interface letterCombinationOfAPhoneNumberTest : XCTestCase
{
@private
    Solution17 *s;
}
@end

@implementation letterCombinationOfAPhoneNumberTest

- (void)setUp {
    [super setUp];
    s = [[Solution17 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testLetterCombinations {
    NSArray* result = [s letterCombination: @"23"];
    NSArray* actual = [NSArray arrayWithObjects:@"ad",@"ae", @"af", @"bd", @"be", @"bf", @"cd", @"ce", @"cf", nil];
    
    XCTAssertTrue([result isEqualToArray: actual], @"the two arrays are the same");
}

@end
