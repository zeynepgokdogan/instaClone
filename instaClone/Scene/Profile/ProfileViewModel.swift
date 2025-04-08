//
//  ProfileViewModel.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 8.04.2025.
//

import Foundation
import SwiftUICore

class ProfileViewModel: ObservableObject{
    @Environment(\.dismiss) var dismiss
    
    func signOut(){
        AuthService.shared.signOut()
        dismiss()
    }
}
