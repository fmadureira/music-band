import Foundation

struct Main: Codable {
    let artists: Artists

    enum CodingKeys: String, CodingKey {
        case artists = "bands"
    }
}
