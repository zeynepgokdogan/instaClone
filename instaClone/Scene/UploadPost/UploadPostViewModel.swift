//
//  UploadPostViewModel.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 10.04.2025.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostViewModel: ObservableObject{
    @Published var selectedImage: PhotosPickerItem? {
        didSet{
            Task{
                await loadImage(
                    fromItem: selectedImage
                )
            }
        }
    }
    
    @Published var postImage: Image?
    func loadImage(
        fromItem item: PhotosPickerItem?
    ) async {
        guard let item = item else {
            return
        }
        guard let data = try? await item.loadTransferable(
            type: Data.self
        ) else {
            return
        }
        guard let uiImage = UIImage(
            data: data
        ) else {
            return
        }
        
        self.postImage = Image(
            uiImage: uiImage
        )
    }
}
