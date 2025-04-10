//
//  CurrentUserProfile.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 3.04.2025.
//

import SwiftUI

struct CurrentUserProfile: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: UserModel
    var posts: [PostModel] {
        PostModel.MOCKPOST.filter { $0.user?.username == user.username }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(){
                    ProfileHeaderView(user: user)
                    Divider()
                    PostGridView(posts: posts)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Button("Sign Out", role: .destructive) {
                            viewModel.signOut()
                        }
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfile(user: UserModel.MOCKUSER[0])
}
