//
//  CustomTabBarContainerView.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/20/23.
//

import SwiftUI

//struct TabView<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View
// this code is from when you command click on on tab view and jump to the definition
// We can see that the TabView is a struct
    // that has some generic data TabView<SelectionValue, Content>
            // This is the generic data(SelectionValue, Content)
            // and it conforms to View
            // The generic data has a SelectionValue WHERE SelectionValue conforms to Hashable
            // and it has generic content WHERE the content conforms to View


// Another way to write: struct TabView2<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View

// is struct TabView3<SelectionValue : Hashable Content : View > : View



struct CustomTabBarContainerView<Content:View>: View {
    
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = [] // We are initializing this array as empty 
    
//  init(selection: Binding<SelectionValue>?, @ViewBuilder content: () -> Content)
// this code is from when you command click on on tab view and jump to the definition
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content){
        self._selection = selection // _selection, we use the underscore (_) becuase we are referencing the binding the actual wrapped value of this selection
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0){
            ZStack{
                // This ZStack will hold all the screens
                content
            }
            CustomTabBarView(tabs: tabs, selection: $selection)
        }
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
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
        CustomTabBarContainerView(selection: .constant(tabs.first!)){
            Color.gray
        }
    }
}
