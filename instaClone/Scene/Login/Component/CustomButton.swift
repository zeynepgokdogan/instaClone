//
//  CustomButton.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct CustomButton: View {
    @State private var title: String = ""
    
    var body: some View {
        Button(action: { }) {
            Text(title)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

#Preview {
    CustomButton("kdlşslş")
}
