//
//  TabBarView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct TabBarView: View {
    let user: UserModel
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)

            UploadPostView(tabIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .tag(2)

            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(3)

            CurrentUserProfile(user: user)
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }
        .accentColor(.black)
    }
}

#Preview {
    TabBarView(user: UserModel.MOCKUSER[0])
}
