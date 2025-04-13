//
//  ProfileView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct ProfileView: View {
    let user: UserModel

    var posts: [PostModel] {
        PostModel.MOCKPOST.filter { $0.user?.username == user.username }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    ProfileHeaderView(user: user)
                    Divider()
                    PostGridView(posts: posts)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ProfileView(user: UserModel.MOCKUSER[1])
}
