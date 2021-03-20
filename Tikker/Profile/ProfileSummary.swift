//
//  ProfileSummary.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import AuthenticationServices
import SwiftUI


struct ProfileSummary: View {
    private let signInButton = ASAuthorizationAppleIDButton()
    @State var lolname = ""
    var profile: Profile
    
    fileprivate func SigninWithAppleButton() -> SignInWithAppleButton {
        return SignInWithAppleButton(.signUp,
            onRequest: { request in
                request.requestedScopes = [.fullName, .email]

            },
            onCompletion: { result in
                    switch result {
                    case .success(let authorization):
                        //Handle autorization
                        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
                            let userId = appleIDCredential.user
                            let identityToken = appleIDCredential.identityToken
                            let authCode = appleIDCredential.authorizationCode
                            let email = appleIDCredential.email
                            let givenName = appleIDCredential.fullName?.givenName
                            let familyName = appleIDCredential.fullName?.familyName
                            let state = appleIDCredential.state
                            // Here you have to send the data to the backend and according to the response let the user get into the app.
                        }
                        break
                    case .failure(let error):
                        //Handle error
                        break
                    }
                }
        )
    }
    
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
                    SigninWithAppleButton()
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
