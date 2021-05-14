//
//  Impressum.swift
//  Tikker
//
//  Created by Simon Wachtler on 04/04/21.
//

import SwiftUI

struct Impressum: View {

    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Wachtler Simon")
                        .bold()
                    Text("Köstlanerstraße 33/B\n39042 Brixen\n+39 345 8792946\napp@simonwachtler.com\n")
                        NavigationLink(
                            destination: Text("Coming soon"),
                            label: {
                                Text("Jetzt kontaktieren")
                                    .bold()
                                    .frame(width: 250, height: 48)
                                    .background(Color.blue)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(12)
                                    .padding(.top, -15)
                                    .padding(.bottom, 12)
                            })
                    Text("Streitbeilegung")
                        .fontWeight(.semibold)
                    Text("Pflichtinformation nach EU-Verordnung Nr. 524/2013 des Europäischen Parlaments und Rats Plattform zur Online-Beilegung verbraucherrechtlicher Streitigkeiten (ODR) der Europäischen Kommission:")
                    Link("http://ec.europa.eu/consumers/odr/", destination: URL(string: "http://ec.europa.eu/consumers/odr/")!)

                    Spacer().frame(height: 5)
                    Text("Verantwortlich für den Inhalt")
                        .fontWeight(.semibold)
                    Text("Simon Wachtler")
                    Spacer().frame(height: 8)
                            }
                .padding(.top)
                .padding(.leading)
              .padding(.trailing)
                
                VStack(alignment: .leading, spacing: 6){

                    Text("Haftungsausschluss für Inhalte")
                        .fontWeight(.semibold)
                    Text("Die Inhalte meiner App wurden mit größter Sorgfalt erstellt, bearbeitet und überprüft.\nFür die Richtigkeit, Qualität, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen, auch da möglicherweise in der Zwischenzeit Änderungen eingetreten sein könnten.\nHaftungsansprüche jeglicher Natur, welche durch die Nutzung der bereitgestellten Informationen oder durch fehlende und/oder unvollständige Informationen verursacht wurden, sind grundsätzlich ausgeschlossen.")
                    Spacer().frame(height: 5)
                    Text("Haftungsausschluss für Links")
                        .fontWeight(.semibold)
                    Text("Meine App enthält Links zu externen Webseiten Dritter (z.B. Github), auf deren Inhalte ich keinen Einfluss nehmen kann. Aus diesem Grund kann ich in Bezug auf die Inhalte der verlinkten Webseiten auch keine Gewähr, welcher Natur auch immer, übernehmen. Für die Inhalte der verlinkten Seiten ist ausschließlich der jeweilige Anbieter oder Betreiber dieser Seiten verantwortlich.")
                    Spacer().frame(height: 5)
                    Text("Urheberrecht")
                        .fontWeight(.semibold)
                    Text("Alle Inhalte und Werke in dieser App sind urheberrechtlich geschützt.\nDie Vervielfältigung, Bearbeitung, Verbreitung und jegliche Art der Verwertung, insbesondere kommerzieller Natur, außerhalb der Grenzen des Urheberrechtes sind untersagt und bedürfen jedenfalls der vorherigen schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers.\nSoweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet.\nInsbesondere werden Inhalte Dritter als solche gekennzeichnet.\nSolltest du trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitte ich dich um einen entsprechenden Hinweis.\nBei Bekanntwerden von solchen Rechtsverletzungen werde ich derartige Inhalte natürlich sofort entfernen, übernehme diesbezüglich aber keinerlei Haftung.")
                    Spacer().frame(height: 7)
                    Text("© Simon Wachtler")
                        .italic()
                }
                .padding(.leading, 25)
                .padding(.trailing)
                
            }
            .navigationBarTitle("Impressum")

        
    }
    

}

struct Impressum_Preview: PreviewProvider {
    static var previews: some View {
        Impressum()
    }
}
