//
//  NotificationView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 17.04.2025.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("no_notifications_yet".localized)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            }
            .navigationTitle("notifications".localized)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "bell")
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
