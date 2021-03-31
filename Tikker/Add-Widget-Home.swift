//
//  Add-Widget-Home.swift
//  Tikker
//
//  Created by Simon Wachtler on 31/03/21.
//

import SwiftUI

struct AddWidgetHome: View {
    var body: some View {
        ZStack {
            VStack {
                Image("Widget-1")
                  .resizable()
                .scaledToFit()
                    .frame(height: 190, alignment: .top)
              
            HStack {
                Spacer()
            Text("Füge ein Widget zu deinen Homescreen hinzu")
                .font(.system(size: 22))
                .multilineTextAlignment(.center)
                .padding()
                Spacer()
            }
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("Jetzt hinzufügen")
                            .bold()
                            .frame(width: 350, height: 52)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                            .padding(.top, -8)
                            .padding(.bottom, 15)
                    })
                
            
        }
        }
        
        .cornerRadius(12)
     //   .padding(.vertical, 20)
       // .padding(.horizontal, 20)
        //.cornerRadius(12)

        .background(Color.white)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        
    }
}


struct AddWidgetHome_Preview: PreviewProvider {
static var previews: some View {
    AddWidgetHome()
}
}
