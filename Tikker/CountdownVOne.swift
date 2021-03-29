//
//  CountdownV1.swift
//  Tikker
//
//  Created by Simon Wachtler on 23/03/21.
//
// Inspiration: https://www.youtube.com/watch?v=-mhmE8o8nGw&t=4s

import SwiftUI


struct CountdownVOne: View {
    @State var toDate = Calendar.current.date(byAdding: .year, value: 3, to: Date())!
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
        VStack(alignment: .center) {
        Text("Deine Lebenserwartung")
            .fontWeight(.heavy)
            .font(.system(size:25))
        
        Spacer().frame(height:8)
        
        TimerView(setDate: toDate)
            
    
        
    }
            Spacer()
        }
        .padding()
    
    }
}

struct CountdownVOne_Previews: PreviewProvider {
    static var previews: some View {
        CountdownVOne()
    }
}

struct TimerView : View {
    @State var nowDate: Date = Date()
    let setDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }
    var body: some View {
        Text(TimerFunctionOne(from: setDate))
            .multilineTextAlignment(.center)
            .font(.system(size:50))
            .onAppear(perform: {self.timer
            })
        
        Text("Jahre | Monate | Tage")
            .font(.system(size:20))
        
        Spacer().frame(height:5)

        
        Text(TimerFunctionTwo(from: setDate))
            .multilineTextAlignment(.center)
            .font(.system(size:50))
            .onAppear(perform: {self.timer
            })
        
        Text("Stunden | Minute | Sekunden")
            .font(.system(size:15))


          
    
    }
    
    func TimerFunctionOne(from date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let timeValue = calendar
            .dateComponents([.year, .month, .day], from: nowDate, to: setDate)
        
        return String(format: "%02d:%02d:%02d",
                      timeValue.year!,
                      timeValue.month!,
                      timeValue.day!)

        
    }
    
    
    func TimerFunctionTwo(from date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let timeValue = calendar
            .dateComponents([.day, .hour, .minute, .second], from: nowDate, to: setDate)
        
        return String(format: "%02d:%02d:%02d",
                      timeValue.hour!,
                      timeValue.minute!,
                      timeValue.second!,
                      timeValue.day!)

        
    }
}
