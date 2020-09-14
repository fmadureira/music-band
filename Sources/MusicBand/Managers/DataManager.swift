import Foundation

final class DataManager {
    enum Error: Swift.Error {
        case fileNotFound
        case filePathURLNotValid
        case fileCorrupted
    }

    private let fileManager: FileManager
    let fileData: Data

    init(file: String) throws {
        let fileManager = FileManager.default
        let fileDataPath = fileManager.currentDirectoryPath + "/\(file)"

        guard fileManager.fileExists(atPath: fileDataPath) else {
            throw DataManager.Error.fileNotFound
        }

        let filePathURL = URL(fileURLWithPath: fileDataPath)

        self.fileManager = fileManager
        self.fileData = try Data(contentsOf: filePathURL)
    }

    func persistData() {
        // TODO: To be implemented
    }

}