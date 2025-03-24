//
//  ProfileView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        ScrollView {
            VStack(spacing:10){
                HStack(spacing: 30){
                    Image("profile")
                        .resizable()
                        .frame(width: 100, height: 90)
                        .clipShape(Circle())
                        .padding()
                    UserStatView(value: 10, title: "Posts")
                    UserStatView(value: 460, title: "Followers")
                    UserStatView(value: 540, title: "Following")
                    
                }
                VStack(alignment: .leading){
                    Text("Zeynep Gökdoğan").font(.callout)
                    Text("AYBU-CENG").font(.callout)
                }
                .frame(maxWidth: .infinity ,alignment: .leading)
                .padding(.horizontal)
                
                Button{
                    
                }label: {
                    Text("Edit Profile")
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .frame(width: 360, height: 32)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(.gray))
                }
                Divider()
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(minimum: 100)), count: 3), spacing: 10){
                    ForEach(0..<17){_ in
                        Image("post")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Rectangle())
                        
                    }
                }
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView()
}
