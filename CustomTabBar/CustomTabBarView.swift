//
//  CustomTabBarView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/20/23.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: [TabBarItem] // an of array of type TabBarItem
    @Binding var selection: TabBarItem
    // We want to make this @Bindning instead of @State because we want to connect this to a higher level connection, So that when the acutal screen changes, the tab bar will change as well
    var body: some View {
        HStack{
            ForEach(tabs, id: \.self) { tab in
                tabview(tab: tab).onTapGesture{
                    switchToTab(tab: tab)
                }
            }
        }.padding(4)
            .background(Color.black.ignoresSafeArea(edges: .bottom))
    }
}
struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        TabBarItem(symbolName: "house", title: "Home", color: Color.gray),
        TabBarItem(symbolName: "figure.baseball", title: "Score", color: Color.gray),
        TabBarItem(symbolName: "play.tv", title: "Watch", color: Color.gray),
        TabBarItem(symbolName: "flag", title: "Standings", color: Color.gray),
        TabBarItem(symbolName: "ellipsis", title: "More", color: Color.red),
        TabBarItem(symbolName: "figure.baseball", title: "Players", color: Color.green),
        TabBarItem(symbolName: "play.tv", title: "Free Agents", color: Color.blue),
        TabBarItem(symbolName: "flag", title: "News ", color: Color.orange)
    ]
    
    static var previews: some View {
        VStack{
            Spacer()
            CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}

extension CustomTabBarView{
    private func tabview(tab: TabBarItem) -> some View{
        VStack{
            Image(systemName: tab.symbolName).font(.subheadline)
            Text(tab.title).font(.system(size: 10, weight: .semibold, design: .rounded))
        }.foregroundColor(selection == tab ? tab.color : Color.gray)
            .padding(.vertical,8)
            .frame(maxWidth: .infinity)
            .background(selection == tab ? tab.color.opacity(0.2) : Color.clear)
            .cornerRadius(10)
    }
    private func switchToTab(tab: TabBarItem){
        withAnimation(.easeInOut){
            selection = tab
        }
    }
}


struct TabBarItem: Hashable{
    let symbolName: String
    let title: String
    let color: Color
}
