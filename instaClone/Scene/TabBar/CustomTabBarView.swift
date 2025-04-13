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
                    NavigationStack {
                        VStack {
                            Spacer()
                            
                            Text("No notifications yet")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                            Spacer()
                        }
                        .navigationTitle("Notifications")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Image(systemName: "bell")
                            }
                        }
                    }
                case 4:
                    CurrentUserProfile(user: user)
                default:
                    Text("Unknown Tab")
                }
            }
            
            Divider()
            
            HStack {
                tabBarItem(index: 0, icon: "house")
                tabBarItem(index: 1, icon: "magnifyingglass")
                tabBarItem(index: 2, icon: "plus.square")
                tabBarItem(index: 3, icon: "heart")
                tabBarItem(index: 4, icon: "person")
            }
            .frame(height: 50)
            .background(Color.white)
            .padding()
            .padding(.bottom,10)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    private func tabBarItem(index: Int, icon: String) -> some View {
        Button {
            selectedIndex = index
        } label: {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(selectedIndex == index ? .black : .gray)
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    CustomTabBarView(user: UserModel.MOCKUSER[0])
}
