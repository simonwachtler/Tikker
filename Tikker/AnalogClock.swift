//
//  ClockAnalog.swift
//  Tikker
//
//  Created by Simon Wachtler on 26/02/21.
//
// inspired by: https://youtu.be/BTtERko7j1Y (Thanks for this great Tutorial!)

import SwiftUI


struct ContentView: View {
    @State var isDark = false
    var body: some View {
        
        NavigationView{
            
            Home(isDark: $isDark)
                .navigationBarHidden(true)
                .preferredColorScheme(isDark ? .dark : .light)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home: View  {
    @Binding var isDark: Bool
    var width = UIScreen.main.bounds.width - 120
    @State var current_Time = Time(min: 0, sec: 0, hour: 0)
    @State var receiver = Timer.publish(every: 1, on: .current, in: .default) .autoconnect()
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Hallo Simon")
                    .font(.system(size: 40))
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.horizontal, 5)
                
                Spacer(minLength: 0)
                
                Button(action: {isDark.toggle()}) {
                    
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.red)
                        .padding()
                        .clipShape(Circle())
                    
                }
            }
            .padding()
            
        
            
            
            ZStack{
                Circle()
                    .fill(Color("Color"))
                
                
                // Seconds And Min dots....
                
                ForEach(0..<60,id: \.self) {i in
                    
                    Rectangle()
                        .fill(Color.primary)
                        // 60/12 = 5
                        .frame(width: 2, height: (i % 5) == 0 ? 15 : 5)
                        .offset(y: (width - 100) / 2)
                        .rotationEffect(.init(degrees: Double(i) * 6))
                }
                
                // Sec...
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 2, height: (width - 180) / 1.1)
                    .offset(y: -(width - 180) / 3)
                    .rotationEffect(.init(degrees: Double(current_Time.sec) * 6))
              
                
                // Min...
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 4, height: (width - 200) / 1.1)
                    .offset(y: -(width - 200) / 3)
                    .rotationEffect(.init(degrees: Double(current_Time.min) * 6))

                
                // Hour
                Rectangle()
                    .fill(Color.primary)
                    .frame(width: 4.5, height: (width - 220) / 1.2)
                    .offset(y: -(width - 240) / 2)
                    .rotationEffect(.init(degrees: Double(current_Time.hour + (current_Time.min / 60)) * 30))

                
                // Center Circle...
                Circle()
                    .fill(Color.primary)
                    .frame(width: 15, height: 15)
                
            }
            .frame(width: width - 80, height: width - 80 )
            .padding(EdgeInsets(top: 0, leading: 110, bottom: 0, trailing: 0))
            

            
            // getting Time...
            
            Text(getTime())
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding(.top, 10)
                .multilineTextAlignment(.leading)
            
            // getting Date ...
            
            Text(getDate())
                .font(.system(size: 22))
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)

            
            Spacer(minLength: 0)
        
    }
        .onAppear(perform: {
            let calendar = Calendar.current
            
            let min = calendar.component(.minute, from: Date())
            let sec = calendar.component(.second, from: Date())
            let hour = calendar.component(.hour, from: Date())
            
            withAnimation(Animation.linear(duration: 0.01)) {
                
                self.current_Time = Time(min: min, sec: sec, hour: hour)
            }
        })
        .onReceive(receiver) { (_) in
            let calendar = Calendar.current
            
            let min = calendar.component(.minute, from: Date())
            let sec = calendar.component(.second, from: Date())
            let hour = calendar.component(.hour, from: Date())
            
            withAnimation(Animation.linear(duration: 0.01)) {
                
                self.current_Time = Time(min: min, sec: sec, hour: hour)
            }
        }
}
    
    func getTime() -> String {
        
        let format = DateFormatter()
        format.dateFormat = "hh:mm a"
        
        return format.string(from: Date())
    }
    
    func getDate() -> String {
        let format = DateFormatter()
        format.dateFormat = "E,  dd.  MMM yyyy"
        
        return format.string(from: Date())
    }
}

// Calculating time...

struct Time {
    var min: Int
    var sec: Int
    var hour: Int
}
