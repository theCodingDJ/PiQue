import XCTest
@testable import PiQue

final class PiQueStringTests: XCTestCase {
    
    func testAppendP() {
        let initial = "ABC"
        let appendP = initial.appendP

        XCTAssertEqual("P", appendP.suffix(1), "Expected suffix: `P` not found.")
        XCTAssertEqual("ABCP", appendP, "Error appending suffix `P`.")
    }
    
    func testAppendQ() {
        let initial = "ABC"
        let appendQ = initial.appendQ
        
        XCTAssertEqual("Q", appendQ.suffix(1), "Expected suffix: `Q` not found.")
        XCTAssertEqual("CBAQ", appendQ, "Error appending suffix `Q`.")
    }
}
