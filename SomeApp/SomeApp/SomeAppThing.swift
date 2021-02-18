import Foundation
import Example

class SomeAppThing {

    private let service: ExampleService
    private  var things: [ExampleThing] = []

    init(service: ExampleService) {
        self.service = service
    }

    func fetch() {
        self.service.fetch { [unowned self] things in
            self.things = things
        }
    }

    func vendRandomThing() -> ExampleThing? {
        self.things.randomElement()
    }
}
