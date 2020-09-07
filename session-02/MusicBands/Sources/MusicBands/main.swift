import Foundation

typealias Artists = [Artist]
typealias Members = [Member]
typealias Tracks = [Track]
typealias Albums  = [Album]

struct Main: Codable {
    let artists: Artists
}

struct Artist: Codable {
    let name: String
    let members: Members
    let albums: Albums
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
struct Album: Codable {
    let name: String
    let tracks: Tracks
    let year: Int
}

// Track
struct Track: Codable {
    let name: String
    let number: Int
    let time: Int
}

func fetchArtistData() {
    do {
        let filePath = URL(fileURLWithPath: "/Users/unnamedd/workspace/madu-sessions/session-two/MusicBands/Sources/MusicBands/artists.json")
        let data = try Data(contentsOf: filePath)
        
        let decoder = JSONDecoder()
        let main = try decoder.decode(Main.self, from: data)
        
        if let firstArtist = main.artists.first {
            // do something
        }
        
    }
    catch {
        print("Erro: \(error.localizedDescription)")
    }
}

func sortAlbumsAndPrint(_ albums: Albums) {
    
}

fetchArtistData()
