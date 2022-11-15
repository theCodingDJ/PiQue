import XCTest
@testable import PiQue

final class PiQueTests: XCTestCase {
    
    let piqueConverter = PiQueConverter()
    
    func testExample1() {
        
        // Provided parameters
        let initial = "PQQ"
        let target = "PQQP"
        
        // Expected result
        var result = false
        
        // Create an expectation
        let expectation = self.expectation(description: "TestExample1")
        
        piqueConverter.tryConverting(initial: initial, to: target) { conversionResult in
            result = conversionResult
            expectation.fulfill()
        }
        
        // Wait for the expectation to be fulfilled.
        // 5 seconds timeout will ensure longer initial parameters will be processed.
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertTrue(result, "The initial parameter `\(initial)` cannot be converted to the target parameter `\(target)`.")
    }
    
    func testExample2() {
        
        // Provided parameters
        let initial = "PQQ"
        let target = "QQPQPPPP"
        
        // Expected result
        var result = false
        
        // Create an expectation
        let expectation = self.expectation(description: "TestExample2")
        
        piqueConverter.tryConverting(initial: initial, to: target) { conversionResult in
            result = conversionResult
            expectation.fulfill()
        }
        
        // Wait for the expectation to be fulfilled.
        // 5 seconds timeout will ensure longer initial parameters will be processed.
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertTrue(result, "The initial parameter `\(initial)` cannot be converted to the target parameter `\(target)`.")
    }
    
    func testExample3() {
        
        // Provided parameters
        let initial = "P"
        let target = "PQPQQQ"
        
        // Expected result
        var result = false
        
        // Create an expectation
        let expectation = self.expectation(description: "TestExample3")
        
        piqueConverter.tryConverting(initial: initial, to: target) { conversionResult in
            result = conversionResult
            expectation.fulfill()
        }
        
        // Wait for the expectation to be fulfilled.
        // 5 seconds timeout will ensure longer initial parameters will be processed.
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertFalse(result, "The initial parameter `\(initial)` shouldn't convert to the target parameter `\(target)`.")
    }
}
