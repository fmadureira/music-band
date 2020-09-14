import Foundation

typealias Artists = [Artist]

struct Artist: Codable, CustomStringConvertible, Comparable {

    let name: String
    let members: Members
    let albums: Albums
    
    var description: String {
        var description = "Artists"
        description += "\(.one)- \(name)"
        description += "\(.two)- Albums"
        
        for album in albums.sorted() {
            description += "\(.three)\(album.description)"
            
            for track in album.tracks.sorted() {
                description += "\(.four)\(track.description)"
            }
        }
        
        description += .newLine
        
        return description
    }
    
    static func < (lhs: Artist, rhs: Artist) -> Bool {
        return lhs.name < rhs.name
    }
    
    static func == (lhs: Artist, rhs: Artist) -> Bool {
        return lhs.name == rhs.name
    }
    
}