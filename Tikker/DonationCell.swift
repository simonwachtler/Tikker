//
//  DonationCell.swift
//  Tikker
//
//  Created by Simon Wachtler on 22/06/21.
//

import SwiftUI

struct DonationCell: View {
    var title : String
    var emoji : String
    var clr : Color
    
    var body: some View {
        HStack {
            
            Text(emoji)
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

struct DonationCell_Previews: PreviewProvider {
    static var previews: some View {
        DonationCell(title: "Donation", emoji: "😇", clr: .purple)
    }
}
