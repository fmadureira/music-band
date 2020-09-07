//  Created by Thiago Holanda on 24.08.20.
//  in Pair Programming with Fellipe Madureira

import Foundation
import SwiftUI

struct Member: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let instrument: Instrument
    let originalMember: Bool
    var age: Int = 40
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
    
    var instrumentImage: some View {
        return instrument.image
            .resizable()
            .frame(
                width: 100,
                height: 100
            )
            .foregroundColor(instrument.color)
    }
    
    var instrumentIcon: some View {
        return instrument.image
    }
}
