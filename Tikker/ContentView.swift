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
                    VStack(alignment: .leading) {
                        
                    }
                    Home(isDark: $isDark )
                    
                    
                }
                .padding(.horizontal, 6)
                .padding(.top, 45)
                
                Spacer()
            }
        }
        
        .ignoresSafeArea(.all)
        
        
        
    }
}




struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .previewDevice("iPhone 11")
    }
}
