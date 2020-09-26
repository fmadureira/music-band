import Foundation

typealias Artists = [Artist]

struct Artist: Codable, CustomStringConvertible, Comparable {

    var id: String = UUID.newIdentifier
    let name: String
    let members: Members
    let albums: Albums
    
    var description: String {
        var description = String.empty
        description += "\(.one, linebreak: false)- \(name) (\(id))"

        if members.count > 0 { 
            description += "\(.two)- Members"

            for member in members {
                description += "\(member.description)"  
            }
        }

        if albums.count > 0 {
            description += "\(.two)- Albums"   

            for album in albums.sorted() {
                description += "\(.three)\(album.description)"
            
                if album.tracks.count > 0 {
                    for track in album.tracks.sorted() {
                        description += "\(.four)\(track.description)"
                    }  
                }
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