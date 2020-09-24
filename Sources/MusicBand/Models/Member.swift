import Foundation

typealias Members = [Member]

struct Member: Codable, CustomStringConvertible, Comparable {
    
    let id = UUID()
    let firstName: String
    let lastName: String
    let instrument: Instrument

    var description: String {
        return "\(.three)- \(firstName) \(lastName): \(instrument)"
    }
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case instrument
    }

    static func < (lhs: Member, rhs: Member) -> Bool {
        return lhs.firstName < rhs.firstName
    }
    
    static func == (lhs: Member, rhs: Member) -> Bool {
        return lhs.firstName == rhs.firstName
    }

}