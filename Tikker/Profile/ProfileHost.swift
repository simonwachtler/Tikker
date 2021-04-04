//
//  ProfileHost.swift
//  Tikker
//
//  Created by Simon Wachtler on 14/03/21.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var draftProfile = Profile.default
    

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: .constant(.default))
        }
   
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
