//
//  AuthService.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 5.04.2025.
//

import Foundation
import FirebaseAuth

class AuthService{
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
     
    func login (withemail email: String, password: String) async throws{
        
    }
    
    func createUser (username: String, email: String, password: String) async throws{
        
    }
    
    func signOut() async throws{
        
    }
    
    func loadUserData(){
        
    }
}
