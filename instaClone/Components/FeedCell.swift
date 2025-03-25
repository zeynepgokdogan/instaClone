//
//  FeedCell.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 10){
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .leading)
                    .clipShape(Circle())
                Text("z.gokd").font(.footnote)
            }
            .padding()
            Image("post")
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
                Text("300 Likes").fontWeight(.bold).font(.footnote)
                HStack{
                    Text("z.gokd ").fontWeight(.bold).font(.footnote) +
                    Text("Lorem ipsum dolor sit amet consectetur adipisicing elit.").font(.footnote)
                }
                .padding(.bottom, 4)
                Text("14h ago").font(.footnote).foregroundStyle(.gray)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    FeedCell()
}
