//
//  ProfileView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Profile")
                .foregroundColor(.white)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
