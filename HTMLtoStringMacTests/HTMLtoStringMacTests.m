//
//  HTMLtoStringMacTests.m
//  HTMLtoStringMacTests
//
//  Created by Benedikt Terhechte on 13/01/16.
//  Copyright © 2016 Deloitte Digital. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSAttributedString+DDHTML.h"

@interface HTMLtoStringMacTests : XCTestCase {
    NSString *_html;
}
@end

@implementation HTMLtoStringMacTests

- (void)setUp {
    [super setUp];
    _html = @"<b>Carl</b><br/><h3>lalala</h3><p>test</p>";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSAttributedString *converted = [NSAttributedString attributedStringFromHTML:_html];
    XCTAssertNotNil(converted);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
