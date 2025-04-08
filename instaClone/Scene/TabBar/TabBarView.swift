//
//  TabBarView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct TabBarView: View {
    let user: User

    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(
                        systemName: "house"
                    )
                }
            SearchView()
                .tabItem {
                    Image(
                        systemName: "magnifyingglass"
                    )
                }
            Text(
                "Upload Photo"
            )
            .tabItem {
                Image(
                    systemName: "plus.square"
                )
            }
            Text(
                "Notifications"
            )
            .tabItem {
                Image(
                    systemName: "heart"
                )
            }
            CurrentUserProfile(
                user: user
            )
            .tabItem{
                Image(
                    systemName: "person"
                )
            }
        }
        .accentColor(.black)
        
    }
}

#Preview {
    TabBarView(user: User.MOCKUSER[0])
}
