import Foundation
import Example
import ExampleTestSupport

struct StubService: Service {
    public typealias T = ExampleThing

    public func fetch(completion: @escaping ([ExampleThing]) -> Void) {
        let thing = TestFactory.makeStubThing()
        completion([thing])
    }
}
