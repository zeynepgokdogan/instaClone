//
//  Post.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 4.04.2025.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUserId: String
    let imageUrl: String
    let caption: String
    let timestamp: Date
    var user: User?
    var likes: Int
}

extension Post {
    static var MOCKPOST: [Post] = [
        .init(
            id: UUID().uuidString,
            ownerUserId: UUID().uuidString,
            imageUrl: "post1",
            caption: "Just chilling with my cat and a hot cup of coffee ☕🐱",
            timestamp: Date(),
            user: User.MOCKUSER[0],
            likes: 123
        ),
        .init(
            id: UUID().uuidString,
            ownerUserId: UUID().uuidString,
            imageUrl: "post2",
            caption: "Wrote three chapters under the stars last night 🌙✨",
            timestamp: Date(),
            user: User.MOCKUSER[1],
            likes: 245
        ),
        .init(
            id: UUID().uuidString,
            ownerUserId: UUID().uuidString,
            imageUrl: "post3",
            caption: "Debugging my way through life 💻☕",
            timestamp: Date(),
            user: User.MOCKUSER[2],
            likes: 187
        ),
        .init(
            id: UUID().uuidString,
            ownerUserId: UUID().uuidString,
            imageUrl: "post4",
            caption: "Today’s piece: A dreamscape of colors 🎨🖌️",
            timestamp: Date(),
            user: User.MOCKUSER[3],
            likes: 310
        ),
        .init(
            id: UUID().uuidString,
            ownerUserId: UUID().uuidString,
            imageUrl: "post5",
            caption: "Exploring hidden gems in the Alps 🏔️📸",
            timestamp: Date(),
            user: User.MOCKUSER[4],
            likes: 402
        ),
        .init(
            id: UUID().uuidString,
            ownerUserId: UUID().uuidString,
            imageUrl: "post6",
            caption: "Lazy Sunday with books and cat cuddles 📚🐾",
            timestamp: Date(),
            user: User.MOCKUSER[0],
            likes: 154
        )
    ]
}

