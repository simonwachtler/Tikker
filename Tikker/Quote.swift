//
//  Quote.swift
//  Tikker
//
//  Created by Simon Wachtler on 25/03/21.
//

import SwiftUI

struct Quote: View {
    var body: some View {
        
        ZStack {
            HStack {
                Spacer()
            Text("Die Zukunft hängt davon ab, was du heute tust!")
                .font(.system(size: 22))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                Spacer()
            }
                
            
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 20)
        .background(Color.green)
        .cornerRadius(12)
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        
    }
}


struct Quote_Preview: PreviewProvider {
static var previews: some View {
    Quote()
}
}
