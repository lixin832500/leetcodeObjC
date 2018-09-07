//
//  addTwoNumbersTest.m
//  leetcodeObjC
//
//  Created by lx on 4/2/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"
#import "2-AddTwoNumbers.h"

@interface addTwoNumbersTest : XCTestCase
{
    @private
    Solution2 *s;
}
@end

@implementation addTwoNumbersTest

- (void)setUp {
    [super setUp];
    s = [[Solution2 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testAddTwoNumbers {
    ListNode *listNode11 = [[ListNode alloc] init];
    ListNode *listNode21 = [[ListNode alloc] init];
    ListNode *listNode12 = [[ListNode alloc] init];
    ListNode *listNode22 = [[ListNode alloc] init];
    ListNode *listNode13 = [[ListNode alloc] init];
    ListNode *listNode23 = [[ListNode alloc] init];
    ListNode *listNode14 = [[ListNode alloc] init];
    ListNode *listNode24 = [[ListNode alloc] init];
    
    listNode11.val = 1;
    listNode12.val = 5;
    listNode13.val = 7;
    listNode14.val = 9;
    listNode11.next = listNode12;
    listNode12.next = listNode13;
    listNode13.next = listNode14;
    listNode14.next = nil;
    
    listNode21.val = 2;
    listNode22.val = 6;
    listNode23.val = 8;
    listNode24.val = 7;
    listNode21.next = listNode22;
    listNode22.next = listNode23;
    listNode23.next = listNode24;
    listNode24.next = nil;
    
    ListNode *totalList = [s addTwoNumbers :listNode11 : listNode21];
    XCTAssertEqual(totalList.val, 3, @"the first node of the list is 3");
    XCTAssertEqual(totalList.next.val, 1, @"the second node of the list is 1");
    XCTAssertEqual(totalList.next.next.val, 6, @"the third node of the list is 6");
    XCTAssertEqual(totalList.next.next.next.val, 7, @"the fourth node of the list is 7");
    XCTAssertEqual(totalList.next.next.next.next.val, 1, @"the fifth node of the list is 1");
}

@end
