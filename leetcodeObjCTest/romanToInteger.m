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

- (void)testRomanToInt{
    NSString *str = @"III";
    NSNumber *result = [s romanToInt:str];
    XCTAssertEqual([result intValue], 3, @"the number is converted to Roman");
}


@end
