//
//  ProfileView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var posts: [Post] {
        Post.MOCKPOST.filter { $0.user?.username == user.username }
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing:10){
                ProfileHeaderView(user: user)
                Divider()
                PostGridView(posts: posts)
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCKUSER[1])
}
