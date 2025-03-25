//
//  UserStatView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
            Text(title).font(.caption)
        }
    }
}

#Preview {
    UserStatView(value: 34, title: "ggf")
}
