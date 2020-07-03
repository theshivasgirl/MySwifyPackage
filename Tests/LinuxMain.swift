import XCTest

import MySwiftyPackageTests

var tests = [XCTestCaseEntry]()
tests += MySwiftyPackageTests.allTests()
XCTMain(tests)
