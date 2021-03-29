//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import SwiftUI
struct ProfileSummary: View {
    @ObservedObject var vm = ViewModel()
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
            
            
            
            VStack {
                if vm.user != nil {
                    VStack(alignment: .leading) {
                        Text("user name: \n\(vm.user!.fullName)")
                        Text("user email: \n\(vm.user!.email)")
                        Text("auth state: \n\(vm.user!.authState)")
                            .foregroundColor(vm.user?.authState == "authorized" ? .green : .primary)
                    }
                    
                }
                else {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        AppleIdButton()
                            .background(Color.primary)
                            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                            .padding(7)
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: 50)
                    }
                    
                    .onAppear {
                        self.vm.getUserInfo()
                    }
                    .shadow(color: Color.secondary.opacity(0.5), radius: 10, x: 0, y: 8)
                }
            }
        }
    }
}






struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .previewDevice("iPhone 11")
    }
}
