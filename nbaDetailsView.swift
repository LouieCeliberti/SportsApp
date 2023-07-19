//
//  nbaDetailsView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/16/23.
//

import SwiftUI

struct nbaDetailsView: View {
    
    let nbaAthleteInfo: athleteInfo
    
    var body: some View {
        VStack {
            if nbaAthleteInfo.name == "Jimmy Butler"{
                Image("Jimmy_Butler").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Carmelo Anthony"{
                Image("Carmelo_Anthony").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Michael Jordan"{
                Image("Michael_Jordan").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Jalen Brunson"{
                Image("Jalen_Brunson").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Kareem Abdul-Jabbar"{
                Image("Kareem_Abdul_Jabbar").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Stephen Curry"{
                Image("Stephen_Curry").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Mitchell Robinson"{
                Image("Mitchell_Robinson").resizable().scaledToFit()
                Text(nbaAthleteInfo.name)
            }else if nbaAthleteInfo.name == "Julius Randle"{
                Image("Julius_Randle").resizable().scaledToFit().padding(.top)
                Text(nbaAthleteInfo.name)
            }
        }
    }
}
struct nbaDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        nbaDetailsView(nbaAthleteInfo: athleteInfo(name: "Julius Randle", isCurrentlyPlaying: false))
    }
}

