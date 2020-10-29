//
//  PictureFrame.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import SwiftUI

/// Image view for GitHub users profile picture.
struct PictureFrame: View {
    @ObservedObject var imageLoader = ImageStore()
    
    var placeHolder: Image = Image(systemName: "photo")
    
    init(url: String?) {
        guard let iurl = url, iurl != "" else { return }
        imageLoader.fetchImage(url: iurl)
    }
    
    var body: some View {
        if let image = self.imageLoader.image {
            return
                Image(uiImage: image)
        }
        return placeHolder
    }
}

