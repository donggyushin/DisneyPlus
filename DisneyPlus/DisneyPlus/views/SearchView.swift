//
//  SearchView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Search")
                .foregroundColor(.white)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
