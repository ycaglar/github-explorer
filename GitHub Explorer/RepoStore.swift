//
//  RepoStore.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import Foundation

/// RepoStore is responsible fetching and parsing the JSON data. It also publishes changes to its subscribers.
class RepoStore: ObservableObject {
    @Published var repos: Array<RepoModel>?
    
    func getRepos(for username: String) {
        guard let url = URL(string: "https://api.github.com/users/\(username)/repos") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            let repos = try? JSONDecoder().decode([RepoModel].self, from: data!)
            DispatchQueue.main.async {
                self.repos = repos
            }
        }
        .resume()
    }
}
