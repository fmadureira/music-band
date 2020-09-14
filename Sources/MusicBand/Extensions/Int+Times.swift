import Foundation 

extension Int {

    var times: String {
        var spaces: String = ""
        
        for _ in 1...self {
            let value = "    "
            spaces += value
        }
        
        return spaces
    }
}