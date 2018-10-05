//
//  reverseNodesInKGroupTest.m
//  leetcodeObjC
//
//  Created by lx on 7/12/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"
#import "25-ReverseNodesInKGroup.h"

@interface reverseNodesInKGroupTest : XCTestCase
{
@private
    Solution25 *s;
}
@end

@implementation reverseNodesInKGroupTest
- (void)setUp {
    [super setUp];
    s = [[Solution25 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testReverseKGroup1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
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
    
    
    ListNode *node = [s reverseKGroup: listNode1 : 2];
    XCTAssertEqual(node.val, 2, @"the first node of the list is 2");
    XCTAssertEqual(node.next.val, 1, @"the second node of the list is 1");
    XCTAssertEqual(node.next.next.val, 4, @"the third node of the list is 4");
    XCTAssertEqual(node.next.next.next.val, 3, @"the fourth node of the list is 3");
    XCTAssertEqual(node.next.next.next.next.val, 5, @"the fifth node of the list is 5");
}

- (void)testReverseKGroup2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
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
    
    
    ListNode *node = [s reverseKGroup: listNode1 : 3];
    XCTAssertEqual(node.val, 3, @"the first node of the list is 3");
    XCTAssertEqual(node.next.val, 2, @"the second node of the list is 2");
    XCTAssertEqual(node.next.next.val, 1, @"the third node of the list is 1");
    XCTAssertEqual(node.next.next.next.val, 4, @"the fourth node of the list is 4");
    XCTAssertEqual(node.next.next.next.next.val, 5, @"the fifth node of the list is 5");
}

@end
