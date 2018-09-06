//
//  mergeTwoSortedListTest.m
//  leetcodeObjC
//
//  Created by lx on 4/3/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"
#import "21-MergeTwoSortedLists.h"

@interface mergeTwoSortedListTest : XCTestCase
{
@private
    Solution21 *s;
}

@end

@implementation mergeTwoSortedListTest

- (void)setUp {
    [super setUp];
    s = [[Solution21 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMergeList {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
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
    listNode14.val = 90;
    listNode11.next = listNode12;
    listNode12.next = listNode13;
    listNode13.next = listNode14;
    listNode14.next = nil;
    
    listNode21.val = 2;
    listNode22.val = 6;
    listNode23.val = 8;
    listNode24.val = 70;
    listNode21.next = listNode22;
    listNode22.next = listNode23;
    listNode23.next = listNode24;
    listNode24.next = nil;
    
    
    ListNode *mergedList = [s mergeList :listNode11 withList: listNode21];
    XCTAssertEqual(mergedList.val, 1, @"the first node of the list is 1");
    XCTAssertEqual(mergedList.next.val, 2, @"the second node of the list is 2");
    XCTAssertEqual(mergedList.next.next.val, 5, @"the third node of the list is 5");
    XCTAssertEqual(mergedList.next.next.next.val, 6, @"the fourth node of the list is 6");
    XCTAssertEqual(mergedList.next.next.next.next.val, 7, @"the fifth node of the list is 7");
    XCTAssertEqual(mergedList.next.next.next.next.next.val, 8, @"the sixth node of the list is 8");
    XCTAssertEqual(mergedList.next.next.next.next.next.next.val, 70, @"the seventh node of the list is 70");
    XCTAssertEqual(mergedList.next.next.next.next.next.next.next.val, 90, @"the eighth node of the list is 90");
    
}


@end
