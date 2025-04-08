//
//  AuthService.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 5.04.2025.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService{
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    
    func login (withemail email: String, password: String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }
        catch {
            print("Error logging in user: \(error.localizedDescription)")
        }
    }
    
    
    func createUser (username: String, email: String, password: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadUserData(uid: result.user.uid, username: username, email: email)
        } catch{
            print("Error creating user: \(error.localizedDescription)")
        }
    }
    
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            self.userSession = nil
        } catch {
            print("Error signing out: \(error.localizedDescription)")
        }
    }

    
    
    func uploadUserData(uid: String, username: String, email: String) async{
        let user = User(id: uid, username: username, email: email)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return}
        try? await
        Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
    
    
    func loadUserData(){
        
    }
}
