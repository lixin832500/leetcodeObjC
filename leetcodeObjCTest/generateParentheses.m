//
//  generateParentheses.m
//  leetcodeObjC
//
//  Created by lx on 7/10/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "22-GenerateParentheses.h"

@interface generateParentheses : XCTestCase
{
@private
    Solution22 *s;
}
@end

@implementation generateParentheses

- (void)setUp {
    [super setUp];
    s = [[Solution22 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testGenerateParenthesis {
    NSArray* result = [s generateParenthesis:3];
    NSArray* actual = [NSArray arrayWithObjects:@"((()))",@"(()())", @"(())()", @"()(())", @"()()()", nil];
    
    XCTAssertTrue([result isEqualToArray: actual], @"the two arrays are the same");

    
}

@end
