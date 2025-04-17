//
//  TabBarView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct CustomTabBarView: View {
    let user: UserModel
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedIndex {
                case 0:
                    FeedView()
                case 1:
                    SearchView()
                case 2:
                    UploadPostView(tabIndex: $selectedIndex)
                case 3:
                    NotificationsView()
                case 4:
                    ProfileView(user: user)
                default:
                    Text("unknown_tab".localized)
                }
            }

            Divider()
            
            HStack {
                TabBarItem(index: 0, icon: "house", selectedIndex: $selectedIndex)
                TabBarItem(index: 1, icon: "magnifyingglass", selectedIndex: $selectedIndex)
                TabBarItem(index: 2, icon: "plus.square", selectedIndex: $selectedIndex)
                TabBarItem(index: 3, icon: "heart", selectedIndex: $selectedIndex)
                TabBarItem(index: 4, icon: "person", selectedIndex: $selectedIndex)
            }
            .frame(height: 50)
            .background(Color.white)
            .padding()
            .padding(.bottom, 10)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    CustomTabBarView(user: UserModel.MOCKUSER[0])
}
