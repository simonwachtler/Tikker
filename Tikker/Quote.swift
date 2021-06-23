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
            VStack {
                Image("quoteimage-1")
                  .resizable()
                    .frame(height: 190, alignment: .top)
        //          .scaledToFit()
              
            HStack {
                Spacer()
            Text("Die Zukunft hängt davon ab, was du heute tust!")
                .font(.system(size: 22))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.bottom, 10)
                Spacer()
            }
                
            
        }
        }
        
     //   .padding(.vertical, 20)
       // .padding(.horizontal, 20)
        //.cornerRadius(12)

        .background(Color.white)
        .cornerRadius(12)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)

        
    }
}


struct Quote_Preview: PreviewProvider {
static var previews: some View {
    Quote()
}
}
