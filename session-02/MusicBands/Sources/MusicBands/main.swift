import Foundation

typealias Artists = [Artist]
typealias Members = [Member]
typealias Tracks = [Track]
typealias Albums  = [Album]

struct Main: Codable {
    let artists: Artists
}

enum Spaces: Int {
    case one   = 1
    case two   = 2
    case three = 3
    case four  = 4
    
    var times: String {
        var spaces: String = ""
        
        for _ in 1...rawValue {
            let value = "    "
            spaces += value
        }
        
        return spaces
    }

}

extension String {
    static var newLine: String {
        "\n"
    }
    
    static var empty: String {
        ""
    }
}

extension String.StringInterpolation {
    mutating func appendInterpolation(spaces: Spaces, linebreak: Bool = true) {
        appendInterpolation("\(linebreak ? String.newLine : .empty)\(spaces.times)")
    }
}

struct Artist: Codable, CustomStringConvertible, Comparable {

    let name: String
    let members: Members
    let albums: Albums
    
    var description: String {
        var description = "Artists"
        description += "\(spaces: .one)- \(name)"
        description += "\(spaces: .two)- Albums"
        
        for album in albums.sorted() {
            description += "\(spaces: .three)\(album.description)"
            
            for track in album.tracks.sorted() {
                description += "\(spaces: .four)\(track.description)"
            }
        }
        
        description += .newLine
        
        return description
    }
    
    static func < (lhs: Artist, rhs: Artist) -> Bool {
        lhs.name < rhs.name
    }
    
    static func == (lhs: Artist, rhs: Artist) -> Bool {
        lhs.name == rhs.name
    }
    
}

enum Instrument: String, Codable {
    case guitar
    case vocals
    case bass
    case drums
    case keyboards
}

// Member
struct Member: Codable {
    let name: String
    let instrument: Instrument
}

// Album
struct Album: Codable, CustomStringConvertible, Comparable {
    let name: String
    let tracks: Tracks
    let year: Int
    
    var description: String {
        return "- \(name) (\(year))"
    }
    
    static func < (lhs: Album, rhs: Album) -> Bool {
        lhs.year < rhs.year
    }
}

// Track
struct Track: Codable, CustomStringConvertible, Comparable {
    
    let name: String
    let number: Int
    let time: Int
    
    var description: String {
        "- [#\(number)] \(name)"
    }
    
    static func < (lhs: Track, rhs: Track) -> Bool {
        lhs.number < rhs.number
    }
}

func fetchArtist() {
    do {
        guard let contentJSONFilePath = Bundle.module.url(forResource: "artists", withExtension: "json") else {
            return
        }
        
        let contentData = try Data(contentsOf: contentJSONFilePath)
        
        let decoder = JSONDecoder()
        let mainObject = try decoder.decode(Main.self, from: contentData)
        
        for artist in mainObject.artists.sorted() {
            print(artist.description)
        }
    }
    catch {
        print("Erro: \(error.localizedDescription)")
    }
}

fetchArtist()
