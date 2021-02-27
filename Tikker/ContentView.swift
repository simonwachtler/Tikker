//
//  ContentView.swift
//  Tikker
//
//  Created by Simon Wachtler on 31/01/21.
//

import SwiftUI

struct SecondContentView: View {
    @State var isDark = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
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
    }
}
