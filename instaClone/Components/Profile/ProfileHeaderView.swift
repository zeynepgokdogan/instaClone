//
//  ProfileHeaderView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 4.04.2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: UserModel

    var profileImageName: String {
        if let url = user.profilePictureUrl, !url.isEmpty {
            return url
        } else {
            return "avatar"
        }
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 30) {
                Image(profileImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())

                HStack(spacing: 16) {
                    UserStatView(value: 10, title: "posts".localized)
                    UserStatView(value: 460, title: "followers".localized)
                    UserStatView(value: 540, title: "following".localized)
                }
            }
            .padding(.horizontal)

            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullName {
                    Text(fullname)
                        .font(.system(size: 15, weight: .semibold))
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.system(size: 14))
                        .foregroundColor(.primary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Text(user.username)
            }
            .padding(.horizontal)
            .padding(.top, 2)

            Button {
                // Edit action
            } label: {
                Text("edit_profile".localized)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
            .padding(.horizontal)
            .padding(.top, 4)
        }
    }
}

#Preview {
    ProfileHeaderView(user: UserModel.MOCKUSER[0])
}
