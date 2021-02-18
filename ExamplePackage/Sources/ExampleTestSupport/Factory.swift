import Foundation
@testable import Example // @testable only works when linked from Test targets with ENABLED_TESTABILITY build setting enable

public struct TestFactory {
    public static func makeStubThing() -> ExampleThing {
        return ExampleThing(name: "Kate", ageInYears: 35)
    }
}
