//
//  PostGridView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 4.04.2025.
//

import SwiftUI

struct PostGridView: View {
    var posts: [Post]
    
    private let gridItems: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 4), count: 3)
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1) {
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: UIScreen.main.bounds.width / 3 - 2,
                        height: UIScreen.main.bounds.width / 3 - 2
                    )
                    .clipped()
            }
        }    }
}


#Preview {
    PostGridView(posts: Post.MOCKPOST)
}
