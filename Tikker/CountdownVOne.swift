//
//  CountdownV1.swift
//  Tikker
//
//  Created by Simon Wachtler on 23/03/21.
//

import SwiftUI
import UIKit

struct CountdownVOne: View {

    
    var toDate = Calendar.current.date(byAdding: .day, value: 3, to: Date())!
    var body: some View {
        VStack(alignment: .leading) {
        Text("Deine Lebenserwartung")
            .bold()
            .font(.system(size: 25))
        
        Spacer().frame(height: 20)
        
        TimerView(setDate: toDate)
        
    }
    
    }
}

struct CountdownVOne_Preview: PreviewProvider {
    static var previews: some View {
        CountdownVOne()
    }
}

struct TimerView: View {
    @State var nowDate: Date = Date()
    let setDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
            self.nowDate = Date()
        }
    }
    var body: some View {
        Text(TimerFunction(from: setDate))
            .onAppear(perform: {self.timer
            })
    
    }
    
    func TimerFunction(from Date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let timeValue = calendar
            .dateComponents([.day, .hour, .minute, .second], from: nowDate, to: setDate)
        
        return String(format: "%02d days left - %02d:%02d:%02d",
          
                      timeValue.day!,
                      timeValue.hour!,
                      timeValue.minute!,
                      timeValue.day!)
    }
}
