import Foundation

typealias Members = [Member]

struct Member: Codable {
    let firstName: String
    let lastName: String
    let instrument: Instrument

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case instrument
    }
}