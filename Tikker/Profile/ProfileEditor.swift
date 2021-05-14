//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    @State var gender = 0

    
    var body: some View {
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
                    Section {
                DatePicker(selection: $profile.birthdate, displayedComponents: .date) {
                    Text("Dein Geburtstag").bold()
                }
                        Picker(selection: $gender, label: Text(""), content: {
                            Text("X").tag(0)
                            Text("Weiblich").tag(1)
                            Text("Männlich").tag(2)
                        }).pickerStyle(SegmentedPickerStyle())
                }
            
            Section {
                Toggle(isOn: $profile.getNotifications) {
                    Text("Erhalte Benachrichtigungen")
                        .bold()
            }
        }
        }
                .padding(.top, -26)
        .navigationBarTitle("Dein Profil")
        }
    }




            
struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
