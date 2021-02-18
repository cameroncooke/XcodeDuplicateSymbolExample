import Foundation

public struct ExampleThing {

    private let name: String
    private let ageInYears: Int

    // This is internal
    init(name: String, ageInYears: Int) {
        self.name = name
        self.ageInYears = ageInYears
    }

    public func summary() -> String {
        return "\(name)'s age is \(ageInYears)"
    }
}
