//
//  OctoView.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import SwiftUI

/// Mainly for providing a place to life for Octocat. Rendered gif image lives here ready to be displayed on the main screen.
struct OctocatView: View {
    var body: some View {
        ZStack {
            GifRenderer(url: Bundle.main.url(forResource: "Octocat", withExtension: "gif")!)
                .frame(width: .infinity, height: 320, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct GifRenderer_Previews: PreviewProvider {
    static var previews: some View {
        OctocatView()
    }
}

