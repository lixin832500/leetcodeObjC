//
//  nQueensIITest.m
//  leetcodeObjC
//
//  Created by lx on 9/5/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "52-NQueensII.h"

@interface nQueensIITest : XCTestCase
{
@private
    Solution52 *s;
}
@end

@implementation nQueensIITest

- (void)setUp {
    [super setUp];
    s = [[Solution52 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testTotalNQueens {
    NSInteger result = [s totalNQueens: 4];
    
    XCTAssertEqual(result, 2, @"the size is right");
}

@end
