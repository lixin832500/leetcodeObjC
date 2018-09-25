//
//  removeNthNodeFromEndofListTest.m
//  leetcodeObjC
//
//  Created by lx on 7/2/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"
#import "19-RemoveNthNodeFromEndofList.h"

@interface removeNthNodeFromEndofListTest : XCTestCase
{
@private
    Solution19 *s;
}
@end

@implementation removeNthNodeFromEndofListTest

- (void)setUp {
    [super setUp];
    s = [[Solution19 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testRemoveNthNodeFromEndofList{
    
    ListNode *listNode1 = [[ListNode alloc] init];
    ListNode *listNode2 = [[ListNode alloc] init];
    ListNode *listNode3 = [[ListNode alloc] init];
    ListNode *listNode4 = [[ListNode alloc] init];
    ListNode *listNode5 = [[ListNode alloc] init];

    
    listNode1.val = 1;
    listNode2.val = 2;
    listNode3.val = 3;
    listNode4.val = 4;
    listNode5.val = 5;
    
    listNode1.next = listNode2;
    listNode2.next = listNode3;
    listNode3.next = listNode4;
    listNode4.next = listNode5;
    listNode5.next = nil;

    
    ListNode *result = [s removeNthFromEnd:listNode1 :2];
    XCTAssertEqual(result.val, 1, @"the first node of the list is 1");
    XCTAssertEqual(result.next.val, 2, @"the second node of the list is 2");
    XCTAssertEqual(result.next.next.val, 3, @"the third node of the list is 3");
    XCTAssertEqual(result.next.next.next.val, 5, @"the fourth node of the list is 5");
    
}

@end

