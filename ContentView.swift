//
//  ContentView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let basketballPlayers = [
            athleteInfo(name : "Carmelo Anthony", isCurrentlyPlaying: false),
            athleteInfo(name : "Michael Jordan", isCurrentlyPlaying: false),
            athleteInfo(name : "Jimmy Butler", isCurrentlyPlaying: true),
            athleteInfo(name : "Jalen Brunson", isCurrentlyPlaying: true),
            athleteInfo(name : "Kareem Abdul-Jabbar", isCurrentlyPlaying: false),
            athleteInfo(name : "Stephen Curry", isCurrentlyPlaying: true),
            athleteInfo(name : "Mitchell Robinson", isCurrentlyPlaying: true),
            athleteInfo(name : "Julius Randle", isCurrentlyPlaying: true)
        ]
        
        let baseballPlayers = [
            athleteInfo(name : "Jorge Posada", isCurrentlyPlaying: false),
            athleteInfo(name : "Derek Jeter", isCurrentlyPlaying: false),
            athleteInfo(name : "Reggie Jackson", isCurrentlyPlaying: false),
            athleteInfo(name :"Mickey Mantle", isCurrentlyPlaying: false),
            athleteInfo(name : "Aaron Judge", isCurrentlyPlaying: true),
            athleteInfo(name : "Alex Rodriguez", isCurrentlyPlaying: false),
            athleteInfo(name : "Anthony Rizzo", isCurrentlyPlaying: true),
            athleteInfo(name : "Robinson Cano", isCurrentlyPlaying: false)
        ]
        
        let footballPlayers = [
            athleteInfo(name : "Marshawn Lynch", isCurrentlyPlaying: true),
            athleteInfo(name : "Peyton Manning", isCurrentlyPlaying: false),
            athleteInfo(name : "Eli Manning", isCurrentlyPlaying: false),
            athleteInfo(name : "Tom Brady", isCurrentlyPlaying: false),
            athleteInfo(name : "Jalen Hurts", isCurrentlyPlaying: true),
            athleteInfo(name : "Aaron Rodgers", isCurrentlyPlaying: true),
            athleteInfo(name : "Dak Prescott", isCurrentlyPlaying: true),
            athleteInfo(name : "Patrick Mahomes", isCurrentlyPlaying: true)
        ]
        NavigationView{
            VStack {
                HStack{
                    VStack(alignment: .leading){
                        List{
                            Group{
                                // MARK: NBA Players
                                //Divider()
                                Section(header:nbaPlayers(basketballSymbol: "figure.basketball", headerText: "NBA Players")){
                                    ForEach(basketballPlayers, content: {
                                        nbaPlayerInfo in NavigationLink(nbaPlayerInfo.name, destination: nbaDetailsView(nbaAthleteInfo: nbaPlayerInfo))
                                        
                                    })
                                }
                            }
                            Group{
                                // MARK: MLB Players
                                //Divider()
                                Section(header:mlbPlayers(baseballSymbol: "figure.baseball", headerText: "MLB Players")){
                                    ForEach(baseballPlayers, content: {
                                        mlbPlayerInfo in NavigationLink(mlbPlayerInfo.name, destination: mlbDetailsView(mlbAthleteInfo:mlbPlayerInfo))
                                        
                                    })
                                    
                                }
                            }
                            
                            Group{
                                // MARK: NFL Players
                                //Divider()
                                Section(header:nflPlayers(footballSymbol: "figure.american.football", headerText: "NFL Players")){
                                    ForEach(footballPlayers, content: {
                                        nflPlayerInfo in NavigationLink(nflPlayerInfo.name, destination: nflDetailsView(nflAthleteInfo: nflPlayerInfo))
                                    })
                                }
                            }                        }
                    }
                }
            }
        }
    }
    
    struct mlbPlayers: View {
        
        let baseballSymbol: String
        let headerText: String
        
        var body: some View {
            
            HStack{
                Text(Image(systemName:baseballSymbol)).foregroundColor(.red)
                Text(headerText).font(.title2).foregroundColor(.gray)
            }
        }
    }
    
    struct nflPlayers: View {
        
        let footballSymbol: String
        let headerText: String
        
        var body: some View {
            
            HStack{
                Text(Image(systemName:footballSymbol)).foregroundColor(.red)
                Text(headerText).font(.title2).foregroundColor(.gray)
            }
        }
    }
    
    struct nbaPlayers: View {
        
        let basketballSymbol: String
        let headerText: String
        
        var body: some View {
            
            HStack{
                Text(Image(systemName:basketballSymbol)).foregroundColor(.red)
                Text(headerText).font(.title2).foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
