//
//  CWDCalculatorServiceTests.m
//  CoverageTesting
//
//  Created by Chris Wagner on 5/13/14.
//
//

#import <XCTest/XCTest.h>
#import "CWDCalculatorService.h"

@interface CWDCalculatorServiceTests : XCTestCase

@property (strong, nonatomic) CWDCalculatorService *calculator;

@end

@implementation CWDCalculatorServiceTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.calculator = [[CWDCalculatorService alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSums {
    XCTAssertEqual(4, [self.calculator sumOfA:2 andB:2], @"2+2 should be 4");
    XCTAssertEqual(10, [self.calculator sumOfA:7 andB:3], @"7+3 should be 10");
}

- (void)testProducts {
    XCTAssertEqual(16, [self.calculator productOfA:4 andB:4], @"4*4 should be 16");
    XCTAssertEqual(100, [self.calculator productOfA:5 andB:20], @"5*20 should be 100");
}

- (void)testDifferences {
    XCTAssertEqual(50, [self.calculator subtractA:50 fromB:100], @"100-50 should be 50");
    XCTAssertEqual(10, [self.calculator subtractA:2 fromB:12], @"12-2 should be 10");
}

@end
