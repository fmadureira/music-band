import Foundation
//let fileName = "artists.json"
func loadArtists() {
    let fileName = "artists.json"

    do {
        let dataManager = try DataManager(file: fileName)
        let artistsManager = try ArtistsManager(dataManager: dataManager)
    
        print("Artists")
        for artist in artistsManager.artists.sorted() {
            print(artist.description)
        }    
    }
    catch let error as DataManager.Error {
        switch error {
            case .fileNotFound:
                print("File not found: \(fileName)")
            //default:
            //    print("Error: \(error.localizedDescription)")
        }

    }
    catch {
        print(error)
    }
}

/*func loadMembers() {

}
*/

loadArtists()