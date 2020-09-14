import Foundation


func loadArtists() {
    do {
        let dataManager = try DataManager(file: "artists.json")
        let artistsManager = try ArtistsManager(dataManager: dataManager)
    
        for artist in artistsManager.artists.sorted() {
            print(artist.description)
        }
    
        print(dataManager)
    }
    catch {
        print(error)
    }
}

loadArtists()