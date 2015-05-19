//
//  WQExtensionTests.m
//  WQExtensionTests
//
//  Created by Jerry on 14-9-1.
//  Copyright (c) 2014年 wuchuanyu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSJSONSerialization+WQ.h"

@interface WQExtensionTests : XCTestCase

@end

@implementation WQExtensionTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSString* json1 = @"{\"name\":\"111\",\"name2\":null}";
    NSString* json2 = @"[{\"name\":\"111\"},{\"name\":\"222\"}]";
    NSDictionary* dict = [NSJSONSerialization objectWithString:json1];
    NSArray* arr = [NSJSONSerialization objectWithString:json2];
    NSLog(@"%@", dict);
    NSLog(@"%@", arr);
    XCTAssert(YES, @"Pass");
}

@end
