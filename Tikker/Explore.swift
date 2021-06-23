//
//  Explore.swift
//  Tikker
//
//  Created by Simon Wachtler on 15/03/21.
//

import SwiftUI

struct ExplorePage: View {
    var body: some View {
        NavigationView {
            ScrollView {
            HStack {
                Text("Deine Lebenserwartung")
                            .foregroundColor(.pink)
                            .fontWeight(.heavy)
                            .font(.system(size:25))
                            .padding(.top, 20)
                    .padding(.leading, 25)
                    .padding(.bottom, -4)
                
                Spacer()
            }
            
                
                ZStack {
                CountdownVOne()
                }
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
                
            
            }.navigationBarTitle("Entdecken")
        }
    }
}

struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePage()
    }
}
