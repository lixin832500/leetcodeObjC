//
//  romanToInteger.m
//  leetcodeObjC
//
//  Created by lx on 6/23/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "13-RomanToInteger.h"

@interface romanToInteger : XCTestCase
{
@private
    Solution13 *s;
}
@end

@implementation romanToInteger

- (void)setUp {
    [super setUp];
    s = [[Solution13 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testRomanToInt1{
    NSString *str = @"III";
    NSNumber *result = [s romanToInt:str];
    XCTAssertEqual([result intValue], 3, @"the roman is converted to number");
}

- (void)testRomanToInt2{
    NSString *str = @"IV";
    NSNumber *result = [s romanToInt:str];
    XCTAssertEqual([result intValue], 4, @"the roman is converted to number");
}

- (void)testRomanToInt3{
    NSString *str = @"IX";
    NSNumber *result = [s romanToInt:str];
    XCTAssertEqual([result intValue], 9, @"the roman is converted to number");
}

- (void)testRomanToInt4{
    NSString *str = @"LVIII";
    NSNumber *result = [s romanToInt:str];
    XCTAssertEqual([result intValue], 58, @"the roman is converted to number");
}

- (void)testRomanToInt5{
    NSString *str = @"MCMXCIV";
    NSNumber *result = [s romanToInt:str];
    XCTAssertEqual([result intValue], 1994, @"the roman is converted to number");
}

@end
