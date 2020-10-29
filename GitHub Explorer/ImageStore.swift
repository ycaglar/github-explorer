//
//  ImageStore.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import Foundation
import UIKit

/// GitHub user's profile picture will be parsed as string. This is where ImageStore comes to play. Its fetchImage fucntion grabs url string and returns an UIImage object as a response which will later be converted to an Image View
class ImageStore: ObservableObject {
    @Published var image: UIImage?
    
    func fetchImage(url: String) {
        guard let imageURL = URL(string: url) else {
            fatalError("The url string is invalid")
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            guard let data = data, error == nil else {
                fatalError("Error loading image")
            }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        .resume()
    }
}
