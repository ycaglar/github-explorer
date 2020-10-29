//
//  RepoModel.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import Foundation
import UIKit


/// Main skeleton data model for repositories.
struct RepoModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    private var html_url: String
    var owner: Owner
    var url: URL {
        URL(string: html_url)!
    }
}

struct Owner: Hashable, Codable {
    var id: Int
    var login: String
    var avatar_url: String
}

extension RepoModel {
    static func == (lhs: Repo, rhs: Repo) -> Bool {
        lhs.id == rhs.id
    }
}
