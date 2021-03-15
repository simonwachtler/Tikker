//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    var body: some View {
        NavigationView {
          VStack(alignment: .leading, spacing: 10) {
    
               Text(profile.firstname)
                      .bold()
                        .font(.title)

                 Text("Birthdate: ") + Text(profile.birthdate, style: .date)
            
            NavigationLink(destination: Text("Hier kannst du dein Profil bearbeiten")) {
                Text("Dein Profil")
            }
           

            }
           
                .navigationBarTitle("Profil")

        }
    }
}


struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
