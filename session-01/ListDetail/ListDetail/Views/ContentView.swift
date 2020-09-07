//
//  ContentView.swift
//  ListDetail
//
//  Created by Thiago Holanda on 24.08.20.
//  in Pair Programming with Fellipe Madureira

import SwiftUI

struct ContentView: View {
    
    let members: [Member] = [
        Member(firstName: "Fellipe", lastName: "Madureira", instrument: .guitar , originalMember: true, age: 24),
        Member(firstName: "Paulo", lastName: "Oliveira", instrument: .vocal, originalMember: true, age: 98),
        Member(firstName: "Leandro", lastName: "Nô", instrument: .drums, originalMember: false, age: 54),
        Member(firstName: "Fabio", lastName: "Bolinha", instrument: .bass, originalMember: false, age: 75),
    ]
    
    var body: some View {
        List(members) { member in
            NavigationLink(destination: MemberDetailView(member: member)) {
                HStack {
                    member.instrumentIcon
                    
                    Text("\(member.fullName())")
                }
                .padding()
            }
        }
        .navigationTitle("Banda Diabo Verde")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
