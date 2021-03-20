//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//


import SwiftUI

struct ProfileSummary: View {
    @State var lolname = ""
    var profile: Profile
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text(" Dein Profil")) {
                        HStack (spacing: 3) {
                            Text(profile.firstname)
                            Text(profile.lastname)
                            Spacer()
                            Text("PRO")
                                .fontWeight(.bold)
                                .padding(.vertical, 7)
                                .padding(.horizontal, 20)
                                .background(Color.primary.opacity(0.07))
                                .clipShape(Capsule())
                        }
                        .padding(.vertical, 2)
                        NavigationLink(
                            destination: ProfileEditor(profile: Profile.default),
                            label: {
                                Text("Bearbeiten")
                            })
                    }
                    
                    Section {
                        Link("Quellcode auf Github ansehen", destination: URL(string: "https://github.com/simonwachtler/Tikker")!)
                    }
                    
                }
            }
            .navigationTitle("Einstellungen")
        }
    }
}


struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .previewDevice("iPhone 11")
    }
}
