//
//  FeedCell.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading){
            
            HStack(spacing: 10){
                if let user = post.user {
                    Image(user.profilePictureUrl ?? "")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .leading)
                        .clipShape(Circle())
                    Text(user.username).font(.footnote)
                }
         
            }
            
            Image(post.imageUrl)
                .resizable()
                .frame(height: 400)
                .clipped()
            
            VStack(alignment: .leading){
                HStack
                {
                    Image(systemName: "heart").imageScale(.large)
                    Image(systemName: "bubble.right").imageScale(.large)
                    Image(systemName: "paperplane").imageScale(.large)
                }
                .padding(.top, 4)
                .padding(.bottom, 4)
                Text("\(post.likes) likes").fontWeight(.bold).font(.footnote)
                HStack{
                    Text("\(post.user?.username ?? "")").fontWeight(.bold).font(.footnote) +
                    Text("\(post.caption)").font(.footnote)
                }
                .padding(.bottom, 4)
                Text("14h ago").font(.footnote).foregroundStyle(.gray)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCKPOST[0])
}
