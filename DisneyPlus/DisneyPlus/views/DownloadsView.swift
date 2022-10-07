//
//  DonwloadsView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            Text("Downloads")
                .foregroundColor(.white)
        }
    }
}

struct DonwloadsView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadsView()
    }
}
