//
//  mergeKSortedListsTest.m
//  leetcodeObjC
//
//  Created by lx on 7/11/1397 AP.
//  Copyright © 1397 lx. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"
#import "23-MergeKSortedLists.h"

@interface mergeKSortedListsTest : XCTestCase
{
@private
    Solution23 *s;
}
@end

@implementation mergeKSortedListsTest

- (void)setUp {
    [super setUp];
    s = [[Solution23 alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    s = nil;
}

- (void)testMergeKLists {
    ListNode *listNode11 = [[ListNode alloc] init];
    ListNode *listNode12 = [[ListNode alloc] init];
    ListNode *listNode13 = [[ListNode alloc] init];

    ListNode *listNode21 = [[ListNode alloc] init];
    ListNode *listNode22 = [[ListNode alloc] init];
    ListNode *listNode23 = [[ListNode alloc] init];
    
    ListNode *listNode31 = [[ListNode alloc] init];
    ListNode *listNode32 = [[ListNode alloc] init];
    
    listNode11.val = 1;
    listNode12.val = 4;
    listNode13.val = 5;
    listNode11.next = listNode12;
    listNode12.next = listNode13;
    listNode13.next = nil;
    
    listNode21.val = 1;
    listNode22.val = 3;
    listNode23.val = 4;
    listNode21.next = listNode22;
    listNode22.next = listNode23;
    listNode23.next = nil;
    
    listNode31.val = 2;
    listNode32.val = 6;
    listNode31.next = listNode32;
    listNode32.next = nil;
    
    NSMutableArray* lists = [NSMutableArray array];
    [lists addObject:listNode11];
    [lists addObject:listNode21];
    [lists addObject:listNode31];
    
    
    ListNode *node1 = [s mergeKLists: lists];
    XCTAssertEqual(node1.val, 1, @"the first node of the list is 1");
    XCTAssertEqual(node1.next.val, 1, @"the second node of the list is 1");
    XCTAssertEqual(node1.next.next.val, 2, @"the third node of the list is 2");
    XCTAssertEqual(node1.next.next.next.val, 3, @"the fourth node of the list is 3");
    XCTAssertEqual(node1.next.next.next.next.val, 4, @"the fifth node of the list is 4");
    XCTAssertEqual(node1.next.next.next.next.next.val, 4, @"the sixth node of the list is 4");
    XCTAssertEqual(node1.next.next.next.next.next.next.val, 5, @"the seventh node of the list is 5");
    XCTAssertEqual(node1.next.next.next.next.next.next.next.val, 6, @"the eighth node of the list is 6");
}

@end
