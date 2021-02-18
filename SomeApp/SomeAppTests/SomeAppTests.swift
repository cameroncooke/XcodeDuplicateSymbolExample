import XCTest
@testable import SomeApp

class SomeAppTests: XCTestCase {

    func testSomeAppThingVendsRandomThing() {

        let service = StubService()
        let sut = SomeAppThing(service: service)
        sut.fetch()

        let actualThing = sut.vendRandomThing()
        XCTAssertNotNil(actualThing)
    }
}
