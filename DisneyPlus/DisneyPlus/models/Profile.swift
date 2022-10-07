//
//  Profile.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/08.
//

import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    var name: String
    var avatar: String
    var backColor: Color
}

extension Profile {
    static var sampleProfiles: [Profile] {
        return [
            Profile(name: "Tiger", avatar: "🐯", backColor: .pink),
            Profile(name: "Mouse", avatar: "🐭", backColor: .purple),
            Profile(name: "Dog", avatar: "🐶", backColor: .green),
            Profile(name: "Panda", avatar: "🐼", backColor: .orange),
            Profile(name: "Monkey", avatar: "🐵", backColor: .red),
            Profile(name: "Hamster", avatar: "🐹", backColor: .blue)
        ]
    }
}
