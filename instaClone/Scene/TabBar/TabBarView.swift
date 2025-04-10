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
        TabView(selection: $selectedIndex){
            FeedView()
                .onAppear(){
                    selectedIndex = 0
                }
                .tabItem {
                    Image(
                        systemName: "house"
                    )
                }
                .tag(0)
            SearchView()
                .onAppear(){
                    selectedIndex = 1
                }
                .tabItem {
                    Image(
                        systemName: "magnifyingglass"
                    )
                }
                .tag(1)
            UploadPostView(tabIndex: $selectedIndex)
                .onAppear(){
                    selectedIndex = 2
                }
                .tabItem {
                    Image(
                        systemName: "plus.square"
                    )
                }
                .tag(2)
            Text(
                "Notifications"
            )
            .onAppear(){
                selectedIndex = 3
            }
            .tabItem {
                Image(
                    systemName: "heart"
                )
            }
            .tag(3)
            CurrentUserProfile(
                user: user
            )
            .onAppear(){
                selectedIndex = 4
            }
            .tabItem{
                Image(
                    systemName: "person"
                )
            }
            .tag(4)
        }
        .accentColor(.black)
        
    }
}

#Preview {
    TabBarView(user: UserModel.MOCKUSER[0])
}
