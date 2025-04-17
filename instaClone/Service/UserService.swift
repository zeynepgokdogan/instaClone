//
//  UserService.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 10.04.2025.
//

import Foundation
import FirebaseFirestore

struct UserService{
    
    static func fetchAllUserr() async throws -> [UserModel] {
        let snapshot = try await Firestore.firestore().collection(
            "users"
        ).getDocuments()
        return snapshot.documents
            .compactMap(
                {
                    try? $0
                        .data(
                            as: UserModel.self
                        )
        })
        
    }
}
