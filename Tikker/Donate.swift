//
//  Donate.swift
//  Tikker
//
//  Created by Simon Wachtler on 22/06/21.
//
import SwiftUI

struct Donate: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
            
            Form {
                Section {
                    Text("Gefällt dir die App?\nWünscht du dir eine neue Funktion?\nWillst du die Weiterentwicklung der App fördern?\n\nUnterstütze jetzt die App mit einer Spende!\nVielen Dank!")
                        .padding(.all, 10)
                        .multilineTextAlignment(.center)
                }
        
                Section {
                    Button(action: {
                    })
{
                        DonationCell(title: "Kleine Spende", emoji: "🙂", clr: .blue)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }
                    Button(action: {
                    })
{
                        DonationCell(title: "Mittlere Spende", emoji: "😊", clr: .blue)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }
                    Button(action: {
                    })
{
                        DonationCell(title: "Große Spende", emoji: "😎", clr: .blue)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }
                    Button(action: {
                    })
{
                        DonationCell(title: "Sehr große Spende", emoji: "🥰", clr: .blue)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }

                }
                Section {
                    Text("Ein riesiges Dankeschön für deine Unterstützung!")
                        .padding(.all, 10)
                        .multilineTextAlignment(.center)
                    Text ("Dein Spendenstand: 0.00€")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 12))
                        .padding()

                }
                .navigationBarTitle("Jetzt Unterstützen!")
            }
          
            
        }
    }


struct Donate_Previews: PreviewProvider {
    static var previews: some View {
        Donate()
    }
}
