//
//  MainTabView.swift
//  arjun-app
//
//  Created by Arjun Iyer on 11/20/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex:Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)

            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(1)

        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
