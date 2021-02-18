import XCTest
@testable import Example

final class ExampleTests: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        let sut = ExampleThing(name: "Jonny", ageInYears: 30)
        XCTAssertEqual(sut.summary(), "Jonny's age is 30")
    }
}
