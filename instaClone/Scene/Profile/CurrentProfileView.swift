//
//  CurrentUserProfile.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 3.04.2025.
//

import SwiftUI

struct CurrentUserProfile: View {
    let user: User
    var posts: [Post] {
        Post.MOCKPOST.filter { $0.user?.username == user.username }
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
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfile(user: User.MOCKUSER[0])
}
