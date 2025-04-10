//
//  User.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 3.04.2025.
//

import Foundation

struct UserModel:  Identifiable,Hashable, Codable {
    let id: String
    var username: String
    var fullName: String?
    var profilePictureUrl: String?
    let email: String
    var bio: String?
}

extension UserModel{
    static var MOCKUSER: [UserModel] = [
        .init(
            id: UUID().uuidString,
            username: "coolcat99",
            fullName: "Michael Young",
            profilePictureUrl: "user1",
            email: "michael.young@example.com",
            bio: "Cat lover, coffee addict, just vibing in the digital world."
        ),
        .init(
            id: UUID().uuidString,
            username: "luna_dreams",
            fullName: "Ella Rivers",
            profilePictureUrl: "user2",
            email: "ella.rivers@example.com",
            bio: "Dreamer and writer, always chasing stories under the moonlight."
        ),
        .init(
            id: UUID().uuidString,
            username: "techguy42",
            fullName: "Alex Knight",
            profilePictureUrl: "user3",
            email: "alex.knight@example.com",
            bio: "Tech enthusiast who can't code without coffee. Building digital things daily."
        ),
        .init(
            id: UUID().uuidString,
            username: "artbyzee",
            fullName: "Zee Monroe",
            profilePictureUrl: "user4",
            email: "zee.monroe@example.com",
            bio: "Artist who paints dreams with color. Every brushstroke tells a story."
        ),
        .init(
            id: UUID().uuidString,
            username: "george_travels",
            fullName: "George Walker",
            profilePictureUrl: "user5",
            email: "george.walker@example.com",
            bio: "A traveler with a passion for exploring the world, one trip at a time."
        )
    ]
}
