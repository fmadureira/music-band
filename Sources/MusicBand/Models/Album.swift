import Foundation

typealias Albums  = [Album]

struct Album: Codable, CustomStringConvertible, Comparable {
    let name: String
    let tracks: Tracks
    let year: Int
    
    var description: String {
        return "- \(name) (\(year))"
    }
    
    static func < (lhs: Album, rhs: Album) -> Bool {
        return lhs.year < rhs.year
    }
}