//
//  TabViewRouter.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

final class TabViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

extension TabViewRouter {
    enum Page {
        case home
        case search
        case downloads
        case profile
    }
}
