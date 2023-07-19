//
//  nflDetailsView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/16/23.
//

import SwiftUI

struct nflDetailsView: View {
    
    let nflAthleteInfo: athleteInfo
    
    var body: some View {
        VStack {
            if nflAthleteInfo.name == "Marshawn Lynch"{
                Image("Marshawn_Lynch").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Peyton Manning"{
                Image("Peyton_Manning").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Eli Manning"{
                Image("Eli_Manning").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Tom Brady"{
                Image("Tom_Brady").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Jalen Hurts"{
                Image("Jalen_Hurts").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Aaron Rodgers"{
                Image("Aaron_Rodgers").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Dak Prescott"{
                Image("Dak_Prescott").resizable().scaledToFit()
                Text(nflAthleteInfo.name)
            }else if nflAthleteInfo.name == "Patrick Mahomes"{
                Image("Patrick_Mahomes").resizable().scaledToFit().padding(.top)
                Text(nflAthleteInfo.name)
            }
        }
    }
}

struct nflDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        nflDetailsView(nflAthleteInfo: athleteInfo(name: "Marshawn Lynch", isCurrentlyPlaying: true))
    }
}
