//
//  ResultView.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import SwiftUI
import SafariServices

/// This is where the result of repository search is listed. RepoStore publishes all repositories associated with the given username and ResultView lists them.
struct ResultView: View {
    @ObservedObject var repoStore: RepoStore = RepoStore()
    
    init(username: String) {
        repoStore.getRepos(for: username)
    }
    
    var body: some View {
        VStack {
            PictureFrame(url: repoStore.repos?[0].owner.avatar_url ?? "")
            List {
                ForEach(repoStore.repos ?? []) { repo in
                    Link(repo.name, destination: repo.url)
                }
                .padding(.horizontal)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}
