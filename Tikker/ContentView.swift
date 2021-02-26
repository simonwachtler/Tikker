//
//  ContentView.swift
//  Tikker
//
//  Created by Simon Wachtler on 31/01/21.
//

import SwiftUI

struct SecondContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Hallo Simon")
                            .bold()
                            .font(.system(size: 40))
                        
                        
                        Text(Date().description(with: .current))
                            
                    }
                    
                }
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
