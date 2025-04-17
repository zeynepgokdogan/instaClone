//
//  TabBarItem.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 17.04.2025.
//

import SwiftUI

struct TabBarItem: View {
    let index: Int
    let icon: String
    @Binding var selectedIndex: Int
    
    var body: some View {
        Button {
            selectedIndex = index
        } label: {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(selectedIndex == index ? .black : .gray)
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    TabBarItem()
}
