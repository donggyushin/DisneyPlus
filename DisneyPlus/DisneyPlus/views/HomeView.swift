//
//  HomeView.swift
//  DisneyPlus
//
//  Created by 신동규 on 2022/10/05.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                GradientBackgroundView()
                ScrollView(showsIndicators: false) {
                    VStack {
                        LogoHeaderView()
                            .frame(maxWidth: 100)
                        CarouselView(geo: geo)
                            .frame(height: 200)
                        ChannelView(channels: Channel.allCases)
                        
                        ForEach(MovieSection.movieSections) { section in
                            MovieSectionView(movieSection: section)
                                .frame(width: geo.size.width)
                        }
                        Spacer(minLength: 60)
                    }
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
