//
//  SenTestClass.m
//  UnitTestDemo
//
//  Created by wsc on 15/9/30.
//  Copyright © 2015年 wsc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SendClass.h"

//STAssertEqualObjects(a1, a2, description, …)
//
//STAssertEquals(a1, a2, description, …)
//
//STAssertEqualsWithAccuracy(a1, a2, accuracy,description, …)
//
//STFail(description, …)
//
//STAssertNil(a1, description, …)
//
//STAssertNotNil(a1, description, …)
//
//STAssertTrue(expr, description, …)
//
//STAssertTrueNoThrow(expr, description, …)
//
//STAssertFalse(expr, description, …)
//
//STAssertFalseNoThrow(expr, description, …)
//
//STAssertThrows(expr, description, …)
//
//STAssertThrowsSpecific(expr, specificException, description, …)
//
//STAssertThrowsSpecificNamed(expr, specificException, aName, description, …)
//
//STAssertNoThrow(expr, description, …)
//
//STAssertNoThrowSpecific(expr, specificException, description, …)
//
//STAssertNoThrowSpecificNamed(expr, specificException, aName, description, …)
//
//比较经常使用的宏
//
//STAssertTrue(expr, description, …)
//STAssertFalse(expr, description, …)
//STAssertNil(a1, description, …)
//STAssertNotNil(a1, description, …)
//STAssertEqualObjects(a1, a2, description, …)
//STAssertEquals(a1, a2, description, …)
//STFail(description, …)
//STAssertThrows(expr, description, …)

@interface SenTestClass : XCTestCase

@end

@implementation SenTestClass

- (void)setUp {
    [super setUp];
    NSLog(@"setUp");
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"tearDown");
}

- (void)testOne {
    NSString *string1 = @"test";
    NSString *string2 = @"test";
    if ([string1 isEqualToString:string2]) {
        NSLog(@"1 ture");
    }else{
        NSLog(@"1 fail");
    }
    
}
- (void)testTwo
{
    int i = 0;
    int j = 1;
    if (i < j) {
        NSLog(@"2 ture");
    }else{
        
        NSLog(@"2 fail");
    }
   
}
- (void)testThree
{
    
    NSString *oneStr = @"hello";
    NSString *twoStr = @"world";
    
    if ([oneStr isEqualToString:twoStr]) {
        NSLog(@"3 ture");
    }else{
        NSLog(@"3 fail");
    }
    
}
- (void)testFour
{
    NSArray *array = nil;
    if (array == nil) {
        NSLog(@"array is nil");
    }else{
        NSLog(@"array not nil");
    }
    
}
- (void)testFive
{
    NSDictionary *dict = @{@"hello": @"word"};
    if ([dict isKindOfClass:[NSDictionary class]]) {
        NSLog(@"dic");
    }else{
        NSLog(@"not dic");
    }
    
}
- (void)testSix
{
    NSNumber *oneNum = @100;
    NSNumber *twoNum = @200;
    BOOL send = [SendClass send:nil];
    if (send) {
        NSLog(@"send YES");
    }else{
        NSLog(@"send NO");
    }
    
}
- (void)testSeven
{
    NSArray *oneArray = @[@11, @22, @33];
    NSArray *twoArray = [oneArray copy];
    
//    NSLog(@"%@",[oneArray objectAtIndex:3]);
    
}
- (void)testEight
{
    NSUInteger uint_1 = 4;
    NSUInteger uint_2 = 4;
    NSLog(@"222");
}

- (void)testdemo{
    
}


- (void)testExample
{
    NSLog(@"Unit tests are not implemented yet in HelloAfterAddOCUnitUnitTest");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
