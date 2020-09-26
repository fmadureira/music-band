import Foundation

extension UUID {
    static var newIdentifier: String {
        return UUID().uuidString
    }
}