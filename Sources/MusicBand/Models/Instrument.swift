import Foundation

enum Instrument: String, Codable, CustomStringConvertible {
    case guitar
    case vocals
    case bass
    case drums
    case keyboards

    var description: String {
        return rawValue.capitalized 
    }
}