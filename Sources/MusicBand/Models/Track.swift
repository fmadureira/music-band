import Foundation

typealias Tracks = [Track]

struct Track: Codable, CustomStringConvertible, Comparable {
    
    let name: String
    let number: Int
    let time: Int
    
    var description: String {
        return "- [#\(number)] \(name)"
    }
    
    static func < (lhs: Track, rhs: Track) -> Bool {
        return lhs.number < rhs.number
    }
}