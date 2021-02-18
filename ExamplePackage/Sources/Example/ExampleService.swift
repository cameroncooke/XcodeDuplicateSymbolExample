import Foundation

public protocol Service {
    associatedtype T

    func fetch(completion: @escaping ([T]) -> Void)
}

public struct ExampleService: Service {
    public typealias T = ExampleThing

    // not a real service of course
    public func fetch(completion: @escaping ([ExampleThing]) -> Void) {
        DispatchQueue.main.async {
            let things = [
                ExampleThing(name: "Jonny", ageInYears: 30),
                ExampleThing(name: "Kate", ageInYears: 35),
                ExampleThing(name: "Richard", ageInYears: 41),
            ]
            completion(things)
        }
    }
}
