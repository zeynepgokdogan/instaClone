//
//  TabBarView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            Text("Feed").tabItem {
                Image(systemName: "house")
            }
            Text("Search").tabItem {
                Image(systemName: "magnifyingglass")
            }
            Text("Upload Photo").tabItem {
                Image(systemName: "plus.square")
            }
            Text("Notifications").tabItem {
                Image(systemName: "heart")
            }
            ProfileView().tabItem{
                Image(systemName: "person")
            }
        }
        .accentColor(.black)
        .padding()
    }
}

#Preview {
    TabBarView()
}
