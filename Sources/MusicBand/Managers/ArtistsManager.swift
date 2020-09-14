import Foundation

final class ArtistsManager {
    private(set) var artists: Artists

    init(dataManager: DataManager) throws {
        let decoder = JSONDecoder()
        let mainObject = try decoder.decode(Main.self, from: dataManager.fileData) 

        self.artists = mainObject.artists
    }
}