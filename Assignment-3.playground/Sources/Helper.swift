import Foundation

public func task(for exercise: String, action: () -> Void) {
    print("ამოცანა: \(exercise)")
    print("------------------------------")
    action()
    print("\n")
    print()
}
