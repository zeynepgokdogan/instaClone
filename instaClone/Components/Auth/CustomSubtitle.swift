//
//  CustomSubtitle.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 2.04.2025.
//

import SwiftUI

struct CustomSubtitle: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 15))
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.center)
            
    }
}

#Preview {
    CustomSubtitle(text:"Subtitle test")
}
