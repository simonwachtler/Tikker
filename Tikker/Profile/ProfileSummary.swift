//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import SwiftUI
import UIKit
import MessageUI


struct ProfileSummary: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var showSheet = false
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @ObservedObject var vm = ViewModel()
    @State var lolname = ""
    var profile: Profile
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text(" Dein Profil")) {

                        
                        NavigationLink(
                            destination: ProfileEditor(profile: Profile.default),
                            label: {
                                HStack  {
                                    Image(systemName: "person.crop.circle")
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    Text("\(profile.firstname) \(profile.lastname)")
                                        .padding(.leading, 10)
                                    Spacer()
                                    Text("PRO")
                                        .fontWeight(.bold)
                                        .padding(.vertical, 7)
                                        .padding(.horizontal, 20)
                                        .background(Color.primary.opacity(0.07))
                                        .clipShape(Capsule())
                                    
    
                                }
                        
                    }
                            )
                    }
                    
                    Section {
                        Button(action: {
                            self.suggestFeature()
                        }) {
                            SettingsCell(title: "Funktion vorschlagen", imgName: "star.circle", clr: .blue)
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                        Button(action: {
                            self.suggestFeature()
                        }) {
                            SettingsCell(title: "Problem melden", imgName: "exclamationmark.triangle", clr: .blue)
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                    }

                    Section {
                        Button(action: {
                            self.openSourceCode()
                        }) {
                            SettingsCell(title: "Quellcode auf Github ansehen", imgName: "chevron.left.slash.chevron.right", clr: .blue)
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                    }
                    
                
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
                                .clipShape(RoundedRectangle(cornerRadius: 11, style: .continuous))
                                .padding(6)
                                .frame(width: UIScreen.main.bounds.width * 0.8, height: 55)
                        }
                        
                        .onAppear {
                            self.vm.getUserInfo()
                        }
                        .shadow(color: Color.secondary.opacity(0.5), radius: 8, x: 0, y: 8)
                    }
                }
                }
            }
            .navigationTitle("Einstellungen")
            .sheet(isPresented: $showSheet) {
                MailView(result: self.$result, newSubject: "App Support Tikker", newMsgBody: "Das ist meine Nachricht:")
            }
            
            
            
        }

        
    }

    func suggestFeature() {
        print("Hurray! New Suggestion")
        if MFMailComposeViewController.canSendMail() {
            self.showSheet = true
        } else {
            print("Error sending mail")
            // Alert : Unable to send the mail
        }
    }
    
    func openSourceCode() {
        print("Open Sourcecode")
        
        let appURL = URL(string: "https://github.com/simonwachtler/Tikker")!

        UIApplication.shared.open(appURL)
    }
}






struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .previewDevice("iPhone 11")
    }
}
