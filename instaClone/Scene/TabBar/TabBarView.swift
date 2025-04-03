//
//  TabBarView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct TabBarView: View {
    init() {
          let appearance = UITabBarAppearance()
          appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
          
          UITabBar.appearance().standardAppearance = appearance
          if #available(iOS 15.0, *) {
              UITabBar.appearance().scrollEdgeAppearance = appearance
          }
      }
    var body: some View {
        TabView{
            FeedView().tabItem {
                Image(systemName: "house")
            }
            SearchView().tabItem {
                Image(systemName: "magnifyingglass")
            }
            Text("Upload Photo").tabItem {
                Image(systemName: "plus.square")
            }
            Text("Notifications").tabItem {
                Image(systemName: "heart")
            }
            CurrentUserProfile().tabItem{
                Image(systemName: "person")
            }
        }
        .accentColor(.black)
        .padding(5)
    }
}

#Preview {
    TabBarView()
}
