import Foundation 

extension String {
    static var newLine: String {
        return "\n"
    }
    
    static var empty: String {
        return ""
    }
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ spaces: Spaces, linebreak: Bool = true) {
        appendInterpolation("\(linebreak ? String.newLine : .empty)\(spaces.rawValue.times)")
    }
}