//  Created by Thiago Holanda on 24.08.20.
//  in Pair Programming with Fellipe Madureira

import Foundation
import SwiftUI

enum Instrument: String {
    case guitar = "Guitar"
    case vocal = "Vocal"
    case drums = "Drums"
    case bass = "Bass"
    
    private var symbolName: String {
        switch self {
        case .guitar:
            return "guitars.fill"
        case .vocal:
            return "music.mic"
        case .drums:
            return "cylinder.split.1x2.fill"
        case .bass:
            return "guitars"
        }
    }
    
    var color: Color {
        switch self {
        case .bass:
            return .blue
        case .drums:
            return .red
        case .guitar:
            return .orange
        case .vocal:
            return .green
        }
    }
    
    var image: Image {
        return Image(systemName: self.symbolName)
    }
}

