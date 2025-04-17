//
//  SearchViewModel.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 10.04.2025.
//

import Foundation

class SearchViewModel: ObservableObject{
    @Published var users = [UserModel]()
    @Published var filteredUsers  = [UserModel] ()
    init(){
        Task{
            try await fetchAllUsers()
        }
    }
    
    @MainActor
    func fetchAllUsers() async throws{
        self.users = try await UserService
            .fetchAllUserr()
        
    }
    
    func filterUsers(
        by searchText: String
    ) {
        if searchText
            .trimmingCharacters(
                in: .whitespacesAndNewlines
            ).isEmpty {
            filteredUsers = []
        } else {
            filteredUsers = users
                .filter { user in
                    user.username
                        .lowercased()
                        .contains(
                            searchText.lowercased()
                        ) ||
                    (
                        user.fullName?.lowercased().contains(
                            searchText.lowercased()
                        ) ?? false
                    )
            }
        }
    }

}
