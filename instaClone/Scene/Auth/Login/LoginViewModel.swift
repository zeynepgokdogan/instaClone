//
//  LoginViewModel.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 7.04.2025.
//

import Foundation

class LoginViewModel : ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String = ""
    
    func signIn() async {
        guard validate() else { return }
        
        do {
            try await AuthService.shared.login(withemail: email, password: password)
        } catch {
            errorMessage = "Login failed: \(error.localizedDescription)"
        }
    }

    
    func validate() -> Bool{
        if email.isEmpty || password.isEmpty{
            errorMessage = "empty_fields_error".localized
            return false
        }
        return true
    }
}
