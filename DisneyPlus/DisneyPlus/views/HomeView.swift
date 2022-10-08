//
//  HomeView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Home")
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
