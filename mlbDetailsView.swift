//
//  mlbDetailsView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/16/23.
//

import SwiftUI

struct mlbDetailsView: View {
    
    let mlbAthleteInfo: athleteInfo
    
    var body: some View {
        VStack {
            if mlbAthleteInfo.name == "Jorge Posada"{
                Image("Jorge_Posada").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Derek Jeter"{
                Image("Derek_Jeter").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Reggie Jackson"{
                Image("Reggie_Jackson").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Mickey Mantle"{
                Image("Mickey_Mantle").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Aaron Judge"{
                Image("Aaron_Judge").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Alex Rodriguez"{
                Image("Alex_Rodriguez").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Anthony Rizzo"{
                Image("Anthony_Rizzo").resizable().scaledToFit()
                Text(mlbAthleteInfo.name)
            }else if mlbAthleteInfo.name == "Robinson Cano"{
                Image("Robinson_Cano").resizable().scaledToFit().padding(.top)
                Text(mlbAthleteInfo.name)
            }
        }
    }
}

struct mlbDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        mlbDetailsView(mlbAthleteInfo: athleteInfo(name: "Jorge Posada", isCurrentlyPlaying: true))
    }
}
