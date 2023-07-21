//
//  SportsAppTabBarView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/20/23.
//


// what we are going to use:
// Genercics
// ViewBuilder
// PreferenceKey
// MatchedGeometryEffect

import SwiftUI

struct SportsAppTabBarView: View {
    @State private var selection: String = "Home"
    
    var body: some View {
        SportsAppTabBarView()
    }
}

struct SportsAppTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        SportsAppTabBarView()
    }
}

extension SportsAppTabBarView{
    private var defaultTabView: some View{
        TabView(selection: $selection){
            Color.black.tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            Color.black.tabItem{
                Image(systemName: "flag")
                Text("Standings")
            }
            Color.black.tabItem{
                Image(systemName: "figure.baseball")
                Text("Scores")
            }
            Color.black.tabItem{
                Image(systemName: "house")
                Text("Teams")
            }
            Color.black.tabItem{
                Image(systemName: "figure.badmiton")
                Text("Players")
            }
            Color.black.tabItem{
                Image(systemName: "figure.american.football")
                Text("Tickets")
            }
            Color.black.tabItem{
                Image(systemName: "figure.basketball")
                Text("Free Agents")
            }
            
            Color.black.tabItem{
                Image(systemName: "figure.tennis")
                Text("Store")
            }
            
        }
    }
}

