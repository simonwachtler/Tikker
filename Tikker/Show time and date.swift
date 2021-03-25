//
//  File.swift
//  Tikker
//

// https://medium.com/iu-women-in-computing/intro-to-swiftui-digital-clock-d0a60e05d394
//
//  Created by Simon Wachtler on 25/03/21.
//

import SwiftUI


struct ShowTimeandDate: View {
    @State var date = Date()
    var timeFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
        
        func timeString(date: Date) -> String {
            let time = timeFormat.string(from: date)
            return time
            
        }
        
        var body: some View {
            
            
            
            VStack {
                Text("\(date)")
                
                
                Text("\(timeString(date: date))")
                
                
            }
        }
        
        
        
    }
    
    struct ShowTimeandDate_Preview: PreviewProvider {
        static var previews: some View {
            ShowTimeandDate()
        }
    }
