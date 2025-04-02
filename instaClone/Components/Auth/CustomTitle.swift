//
//  CustomText.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct CustomTitle: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 25, weight: .bold))
            
    }
}

#Preview {
    CustomTitle(text: "test")
}
