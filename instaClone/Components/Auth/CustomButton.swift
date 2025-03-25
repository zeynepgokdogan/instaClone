//
//  CustomButton.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    
    var body: some View {
        Button(action: { }) {
            Text(title)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 7)
                .stroke(Color.gray, lineWidth: 1)
        )
        .foregroundStyle(.black)
    }
}

#Preview {
    CustomButton(title: "Login") 
}
