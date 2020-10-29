//
//  GiftRenderer.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import Foundation
import SwiftUI
import WebKit

/// GiftRenderer is essentially a web view. Its sole responsibility to render Octocat.gif asset to be displayed on apps main scene.
struct GifRenderer: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        //        guard let url = URL(string: self.url) else {
        //            return WKWebView()
        //        }
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<GifRenderer>) {
        
    }
}
