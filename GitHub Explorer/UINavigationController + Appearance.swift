//
//  UINavigationController + Appearance.swift
//  ExpSep28
//
//  Created by Caglar on 10/28/20.
//

import UIKit

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        let standardAppearance = UINavigationBarAppearance()
        let scrollEdgeAppearance = UINavigationBarAppearance()
        let compactAppearance = UINavigationBarAppearance()
        navigationBar.standardAppearance = standardAppearance
        navigationBar.scrollEdgeAppearance = scrollEdgeAppearance
        navigationBar.compactAppearance = compactAppearance
        navigationBar.standardAppearance.backgroundColor = .octocat
        navigationBar.scrollEdgeAppearance?.backgroundColor = .octocat
        navigationBar.compactAppearance?.backgroundColor = .octocat
        navigationBar.standardAppearance.shadowColor = .clear
        navigationBar.scrollEdgeAppearance?.shadowColor = .clear
        navigationBar.compactAppearance?.shadowColor = .clear
    }
}
