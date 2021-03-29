//
//  SettingsCell.swift
//  Tikker
//
//  Created by Simon Wachtler on 29/03/21.
//

import SwiftUI

struct SettingsCell: View {
    
    var title : String
    var imgName : String
    var clr : Color
    
    var body: some View {
        HStack {
            
            Image(systemName: imgName)
                .foregroundColor(clr)
            
            Text(title)
                .padding(.leading, 10)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 13))
                .foregroundColor(Color.gray.opacity(0.7))
        }
    }
}

struct SettingsCell_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCell(title: "Features", imgName: "sparks", clr: .purple)
    }
}
