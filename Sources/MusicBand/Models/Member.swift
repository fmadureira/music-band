import Foundation

typealias Members = [Member]

struct Member: Codable {
    let name: String
    let instrument: Instrument
}