//
//  ContentView.swift
//  Tikker
//
//  Created by Simon Wachtler on 31/01/21.
//

import SwiftUI
import BottomBar_SwiftUI

struct StartView: View {
    var body: some View {
TabView {
    SecondContentView()
        .tabItem {
            Image(systemName: "heart.fill")
            Text("Übersicht")
        }
    
    
    ExplorePage()
        .tabItem {
            Image(systemName: "square.grid.2x2.fill")
            Text("Entdecken")
        }
}
}

}

struct SecondContentView: View {
    @State var isDark = false
    var body: some View {
        
        
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.1), Color.gray.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 1) {
                        
                    }
                    Home(isDark: $isDark )
                    
                }
                .padding(.top, 45)
            }
        }
        
        .ignoresSafeArea(.all)
        

        
    }
}




struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
            .previewDevice("iPhone 11")
    }
}
