//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    

    
    var body: some View {
        NavigationView {
        Form {
            Section {
            HStack {
                Text("Dein Vorname")
                    .bold()
                Divider()
                TextField("Vorname", text: $profile.firstname)
            }
                HStack {
                    Text("Dein Nachname")
                        .bold()
                    Divider()
                    TextField("Nachname", text: $profile.lastname)
                }

                
            }
            
            DatePicker(selection: $profile.birthdate, displayedComponents: .date) {
                Text("Dein Geburtstag").bold()
            }
        }
            Section {
                Toggle(isOn: $profile.getNotifications) {
                    Text("Erhalte Benachrichtigungen")
                        .bold()
            }
        }
        .navigationBarTitle("Dein Profil")
        }
    }
}


            
struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
