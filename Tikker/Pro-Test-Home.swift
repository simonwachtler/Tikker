//
//  Pro-Test-Home.swift
//  Tikker
//
//  Created by Simon Wachtler on 31/03/21.
//
// https://www.youtube.com/watch?v=IopCl8sOyFA&list=PLlv5YhA0aPwxJMGLZgTNNNQ1-Z7-itWUI&index=6 (this helped me to style the Button)

import SwiftUI

struct ProTestHome: View {
    var width = UIScreen.main.bounds.width - 50
    var body: some View {
        VStack(alignment: .leading) {
        Text("Nutze Tikker bestmöglich")
            .foregroundColor(.pink)
            .fontWeight(.heavy)
            .font(.system(size:25))
            .padding(.top, 20)
            .padding(.leading, 25)
            .padding(.bottom, -4)
        
        ZStack {
            VStack {
                Image("healthimage-1")
                  .resizable()
                    .frame(height: 240, alignment: .top)


              
            HStack {
                Spacer()
            Text("Führe jetzt einen wissenschaftlich geprüften Test durch und erhalte dadurch Praxis-Tipps zum Verlängern deiner Lebenszeit!")
                .font(.system(size: 17))
                .multilineTextAlignment(.center)
                .padding()
                Spacer()
            }
        NavigationLink(
            destination: Text("Destination"),
            label: {
                Text("Jetzt zertifizierten Test starten")
                    .bold()
                    .frame(width: (width - 15), height: 52)
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
}


struct ProTestHome_Preview: PreviewProvider {
static var previews: some View {
    ProTestHome()
}
}
