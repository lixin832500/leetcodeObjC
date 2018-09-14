//
//  integerToRomanTest.m
//  leetcodeObjC
//
//  Created by lx on 6/23/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "12-IntegerToRoman.h"

@interface integerToRomanTest : XCTestCase
{
@private
    Solution12 *s;
}
@end

@implementation integerToRomanTest

- (void)setUp {
    [super setUp];
    s = [[Solution12 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testIntToRoman1 {
    NSNumber *num = @(3);
    NSString *result = [s intToRoman:num];
    XCTAssertTrue([result isEqualToString:@"III"], @"the number is converted to Roman");
}

- (void)testIntToRoman2 {
    NSNumber *num = @(4);
    NSString *result = [s intToRoman:num];
    XCTAssertTrue([result isEqualToString:@"IV"], @"the number is converted to Roman");
}


- (void)testIntToRoman3 {
    NSNumber *num = @(9);
    NSString *result = [s intToRoman:num];
    XCTAssertTrue([result isEqualToString:@"IX"], @"the number is converted to Roman");
}

- (void)testIntToRoman4 {
    NSNumber *num = @(58);
    NSString *result = [s intToRoman:num];
    XCTAssertTrue([result isEqualToString:@"LVIII"], @"the number is converted to Roman");
}

- (void)testIntToRoman5 {
    NSNumber *num = @(1994);
    NSString *result = [s intToRoman:num];
    XCTAssertTrue([result isEqualToString:@"MCMXCIV"], @"the number is converted to Roman");
}
@end
