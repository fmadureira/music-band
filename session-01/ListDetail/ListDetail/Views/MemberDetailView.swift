//
//  MemberDetailView.swift
//  ListDetail
//
//  Created by Thiago Holanda on 25.08.20.
//  in Pair Programming with Fellipe Madureira

import SwiftUI

struct MemberDetailView: View {
    let member: Member
    
    var body: some View {
        VStack {
          
            Spacer()
            
            VStack {
                Group {
                    Text("Idade ")
                        .font(.title)
                        +
                        Text("\(member.age)")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                }
                .padding()
                
                member.instrumentImage
            }
            .padding()
            .background(Color.gray.opacity(0.5))
            .cornerRadius(15)
            
            Spacer()
            
            if member.originalMember {
                Text("Original Member")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
            
        }
        .navigationTitle(member.fullName())
    }
}

struct MemberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MemberDetailView(
                member: Member(
                    firstName: "Thiago",
                    lastName: "Holanda",
                    instrument: .guitar,
                    originalMember: true,
                    age: 34
                )
            )
        }
    }
}
